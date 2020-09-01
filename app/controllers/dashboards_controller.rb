class DashboardsController < ApplicationController
    require 'open-uri'

    def index
       ## @dashboard = Dashboard.new
        @user = current_user
        @user_preferences = UserPreference.find_by_id(@user.user_preference.id)
        @items = Item.where(user_preference_id: @user_preferences.id)
        wardrobe_creation(@items)
        raise
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

    def wardrobe_creation(items)
      top_array = items.joins(:wardrobe_template).where("wardrobe_templates.rendering_group = 'top'").sample
      bottom_array = items.joins(:wardrobe_template).where("wardrobe_templates.rendering_group = 'bottom'")
      hash = {"freezing" => "", "cold" => "", "just right" => "", "warm" => "", "hot" => ""}
      array_t = ["freezing", "cold", "just right", "warm", "hot"]
      array_b = ["freezing", "cold", "just right", "warm", "hot"]
      p top_array
      #p hash
      #p top_array[0].condition_array.include(hash[0])
      #p top_array[0].wardrobe_template.rendering_group


    end

    def api_call
      #### TO DO ADD FALLBACK LOGIC
      @user = current_user
      url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{@user.user_preference.latitude}&lon=#{@user.user_preference.longitude}&exclude={minutely}&appid=#{ENV['OPENWEATHERAPI']}&units=metric"
      response = open(url).read
      hash = JSON.parse response

        return hash

    end
end
