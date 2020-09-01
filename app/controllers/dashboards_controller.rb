class DashboardsController < ApplicationController
    require 'open-uri'

    def index
       ## @dashboard = Dashboard.new
        @user = current_user
        @user_preferences = UserPreference.find_by_id(@user.user_preference.id)
        @items = Item.where(user_preference_id: @user_preferences.id)
        if @user_preferences.geocoded?

        trips = Trip.where(user_preference_id: @user_preferences.id)
        current_date = DateTime.now

              # @user_preferences.address = @user_preferences.city
              # @user_preferences.save


          if trips.length > 0
            # trip in the past
              if trips[0].trip_end_date < current_date
                @user_preferences.address = @user_preferences.default_address
                @user_preferences.save
                Trip.find_by_id(trips[0].id).destroy

              elsif current_date > trips[0].trip_start_date && current_date < trips[0].trip_end_date
                @user_preferences.address = trips[0].destination
                @user_preferences.save
              end
          end


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
          @wardrobe_selection = wardrobe_selection(@forecast_hourly,@user_preferences)
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

    def wardrobe_selection(forecast,preference)
      wardrobe_array = []
      forecast.each do |datapoint|
      hash = {}
      if datapoint['temp'] < preference.temp_br1
        condition = "very cold"
      elsif preference.temp_br1 > datapoint['temp'] && datapoint['temp'] < preference.temp_br2
        condition = "cold"
      elsif preference.temp_br2 > datapoint['temp'] && datapoint['temp'] < preference.temp_br3
        condition = "just right"
      elsif preference.temp_br3 > datapoint['temp'] && datapoint['temp']< preference.temp_br4
        condition = "warm"
      elsif datapoint['temp'] < preference.temp_br4
        condition = "very warm"
      end
      hash['conditions'] = condition
      wardrobe_array << hash
      end
      return wardrobe_array
      end

    private

    def api_call
      #### TO DO ADD FALLBACK LOGIC
      @user = current_user
      p @user.user_preference.latitude
      url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{@user.user_preference.latitude}&lon=#{@user.user_preference.longitude}&exclude={minutely}&appid=#{ENV['OPENWEATHERAPI']}&units=metric"
      response = open(url).read
      hash = JSON.parse response

        return hash

    end
end
