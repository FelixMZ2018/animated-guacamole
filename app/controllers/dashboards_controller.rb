class DashboardsController < ApplicationController
    require 'open-uri'

    def index
       ## @dashboard = Dashboard.new
        @user = current_user
        @user_preferences = UserPreference.find_by_id(@user.id)
        if @user_preferences.geocoded?
          #if time is before the end date than you re using address
          # @user_preferences.trip
          # trip = Trip.where(user_preference_id: @user_preferences.id)

          # #current date & date

          @forecast = api_call()
          @forecast_current = @forecast['current']
          @forecast_hourly = []
          count = 2
          @forecast['hourly'].each do |forecast|
              count = count + 1
              if count == 3
                  @forecast_hourly << forecast
                  count = 0
              end
          end
          @forecast_daily = @forecast['daily']
        else
          redirect_to preferences_path, notice: 'Please enter your location'
        end
    end

    def forecast
      @user = current_user
      @user_preferences = UserPreference.find_by_id(@user.id)
      if @user_preferences.geocoded?
      @forecast = api_call()
      @forecast_hourly = @forecast['hourly']
      @forecast_daily = @forecast['daily']
    else
      redirect_to preferences_path, notice: 'Please enter your location'
    end
    end

    def daily
      @user = current_user
      @user_preferences = UserPreference.find_by_id(@user.id)
      if @user_preferences.geocoded?
      @forecast = api_call()
      @forecast_hourly = @forecast['hourly']
      @forecast_daily = @forecast['daily']
    else
      redirect_to preferences_path, notice: 'Please enter your location'
    end
    end

    private

    def api_call
      #### TO DO ADD FALLBACK LOGIC
      @user = current_user
      url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{@user.user_preference.latitude}&lon=#{@user.user_preference.longitude}&exclude={minutely}&appid=#{ENV['OPENWEATHERAPI']}&units=metric"
      response = open(url).read
      hash = JSON.parse response

        return hash

    end
end
