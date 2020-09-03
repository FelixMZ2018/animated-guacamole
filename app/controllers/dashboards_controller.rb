# frozen_string_literal: true

class DashboardsController < ApplicationController
  require 'open-uri'

  def index
    ## @dashboard = Dashboard.new
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.user_preference.id)
    @items = Item.where(user_preference_id: @user_preferences.id)
  ##  @wardrobe = wardrobe_creation(@items)
    if @user_preferences.geocoded?
      trips = Trip.where(user_preference_id: @user_preferences.id)
      current_date = DateTime.now
      unless trips.empty?
        if trips[0].trip_end_date < current_date
          @user_preferences.address = @user_preferences.default_address
          @user_preferences.save
          Trip.find_by_id(trips[0].id).destroy
  
        elsif current_date > trips[0].trip_start_date && current_date < trips[0].trip_end_date
          @user_preferences.address = trips[0].destination
          @user_preferences.save
          sleep(0.2)
        end
      end
      @forecast = api_call
      @warnings = warnings(@forecast)
      @forecast_hourly = []
      count = 2
      @forecast['hourly'].each do |forecast|
        forecast['condition'] = user_condition(forecast, @user_preferences)
        count += 1
        if count == 3
          @forecast_hourly << forecast
          count = 0
        end
      end
      @forecast_daily = @forecast['daily']
      @conditions = []
      @forecast_hourly.each do |datapoint|
        @conditions << user_condition(datapoint, @user_preferences)
      end
      p @conditions
      @outfits = slim_wardrobe_creation(@conditions,@items)
      
    else
      redirect_to preferences_path, notice: 'Please enter your location'
    end
    
  end

  def forecast
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.id)
    if @user_preferences.geocoded?
      @forecast = api_call
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
      @forecast = api_call
      @forecast_hourly = @forecast['hourly']
      @forecast_daily = @forecast['daily']
    else
      redirect_to preferences_path, notice: 'Please enter your location'
  end
  end

  def slim_wardrobe_creation(conditions_array,items)
    top_array = items.joins(:wardrobe_template).where("wardrobe_templates.rendering_group = 'top'")
    bottom_array = items.joins(:wardrobe_template).where("wardrobe_templates.rendering_group = 'bottom'")
    wardrobe = {}
    conditions_array.each do |condition|
      unless condition == nil
      wardrobe[condition] = {
        'top' => template_fallback(top_array.select { |item| item.condition_array.include?(condition) }.sample, 'top'),
        'bottom' => template_fallback(bottom_array.select { |item| item.condition_array.include?(condition) }.sample, 'bottom')
      }
    end
    end
    return wardrobe
  end

  def warnings(forecast)
    hourly = forecast['hourly'] ## NEEDS REVISITING
    warnings =  {}
    warnings['rain'] = hourly.select { |e| e['weather'][0]['main'] == "Rain" }
    p warnings
    return warnings.first if !warnings.empty?
  end


  def user_condition(datapoint, preference)
    if datapoint['temp'] < preference.temp_br1
      condition = 'very cold'
    elsif preference.temp_br1 <= datapoint['temp'] && datapoint['temp'] < preference.temp_br2
      condition = 'cold'
    elsif preference.temp_br2 <= datapoint['temp'] && datapoint['temp'] < preference.temp_br3
      condition = 'just right'
    elsif preference.temp_br3 <= datapoint['temp'] && datapoint['temp'] < preference.temp_br4
      condition = 'warm'
    elsif datapoint['temp'] >= preference.temp_br4
      condition = 'very warm'
    end
    return condition
    end

  def template_fallback(fallback, rendering_group)
    fallback_top = "<svg width='256px' height='187px' viewBox='0 0 256 187' version='1.1'><g id='Body/Hoodie' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><path d='M190.781205,92.2114854 L222.679476,115.635084 C231.330944,117.969562 238.558965,120.874047 244.363541,124.34854 C245.734683,125.597945 247.391836,128.128197 241.70538,127.690906 C236.018925,127.253615 230.01796,127.049392 229.233339,128.988954 C228.448719,130.928516 231.889854,133.24802 230.303794,135.864997 C229.246421,137.609648 224.250967,133.234999 215.31743,122.74105 L183.729774,109.642447 L190.781205,92.2114854 Z M68.3079281,93.0198914 L89.2053198,93.1020711 C76.3021447,134.755739 69.3363474,156.856914 68.3079281,159.405597 C65.9939846,165.140133 70.8906002,173.873732 72.9845874,178.567103 C66.1645409,181.61887 66.8912241,170.316929 58.2879189,174.319492 C50.4352209,177.972846 44.4616931,184.59248 35.3890352,178.994371 C34.2736052,178.306117 33.0512757,175.714714 36.0045784,173.68967 C43.3623323,168.644547 53.9653015,159.814672 55.3979297,156.908251 C57.3515741,152.944826 61.6549068,131.648706 68.3079281,93.0198914 Z' id='Skin' fill='**SKIN_COLOR**'></path><path d='M122.731734,9.58031077 L131.216685,7.34914009 C165.5935,32.1628362 183.361709,84.0563407 224.996623,108.72736 L216.58973,121.240539 C147.889238,118.771641 125.383314,55.5469019 122.731734,9.58031077 Z' id='Coat-Back' fill='black' transform='translate(173.864178, 64.294840) rotate(5.000000) translate(-173.864178, -64.294840) '></path><path d='M90,114 C124.671756,114 150.175573,114 166.511451,114 C170.007634,114 169.348845,108.951637 168.84345,106.404206 C163.010588,77.0037663 140.241304,45.3115155 140.241304,3.4607303 L118.1718,0 C99.917485,29.3584068 93.6048263,65.5045499 90,114 Z' id='Shirt' fill='#DDE3E9'></path><path d='M90.6148413,28.8579585 C87.4095228,27.9365884 84.8712423,25.7876656 83,22.4111902 C74.933557,7.85607578 77.8467271,-0.157592785 86.4671964,-2.7917309 C95.0876658,-5.42586901 102.775319,-2.04281037e-14 116.510031,-7.10542736e-15 C117.257085,-6.21724894e-15 117.941303,0.0468325343 118.562683,0.140497603 L125.471587,0.534739944 C145.293986,67.7151944 150.760885,112.536948 141.872285,135 L81.6518141,135 C78.0838152,143.319871 74.6695413,150.319871 71.4089926,156 L55,156 C53.4556832,106.067091 65.327297,63.6864104 90.6148413,28.8579585 Z' id='Coat-Front' fill='black'></path><path d='M94.7652287,100.497634 C96.6591508,116.344024 99.7374079,127.844812 104,135 L81.6518141,135 C85.813785,125.295103 90.1849231,113.794314 94.7652283,100.497633 Z' id='Shade' fill-opacity='0.1' fill='#000000'></path></g></svg>"
    fallback_bottom ="<svg width='300px' height='239px' viewBox='0 0 300 239' version='1.1'><g id='Bottom/Standing/Skinny-Jeans' stroke='none' stroke-width='1' fill='none' fill-rule='evenodd'><polygon id='Leg' fill='#191847' points='128 9.9475983e-14 164.254962 127.226909 190.706957 221 210 221 181.890974 9.9475983e-14'></polygon><path d='M118.304342,0 C117.465768,65.5742244 114.606247,101.340188 113.725779,107.297892 C112.845311,113.255595 99.5321718,151.156298 73.7863613,221 L93.7726468,221 C126.549033,153.996902 144.845651,116.096199 148.662499,107.297892 C152.479348,98.4995844 164.258515,62.7336205 182,0 L118.304342,0 Z' id='Leg' fill='#2F3676'></path><g id='Accessories/Shoe/Flat-Pointy' transform='translate(72.000000, 199.000000)' fill='#191847'><path d='M0,40 L1,19 L22,19 C31.9576033,26 44.9576033,31.6666667 61,36 L61,40 L23,40 L10,38 L10,40 L0,40 Z' id='Shoe'></path></g><g id='Accessories/Shoe/Flat-Pointy' transform='translate(188.000000, 199.000000)' fill='#191847'><path d='M0,40 L1,19 L22,19 C31.9576033,26 44.9576033,31.6666667 61,36 L61,40 L23,40 L10,38 L10,40 L0,40 Z' id='Shoe'></path></g></g></svg>"
    if fallback.nil?
      if rendering_group == 'top'
        fallback_top.gsub("**SKIN_COLOR**",@user_preferences.skin_tone)
      else
        fallback_bottom.gsub("**SKIN_COLOR**",@user_preferences.skin_tone)
      end
    else
      fallback.render_string
    end
  end

  private

  def api_call
    #### TO DO ADD FALLBACK LOGIC
    @user = current_user
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{@user.user_preference.latitude}&lon=#{@user.user_preference.longitude}&appid=#{ENV['OPENWEATHERAPI']}&units=metric"
    response = open(url).read
    hash = JSON.parse response

    hash
  end
end
