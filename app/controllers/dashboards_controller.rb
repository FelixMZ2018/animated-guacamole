class DashboardsController < ApplicationController
    require 'open-uri'

    def index
       ## @dashboard = Dashboard.new
        @user = current_user
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
