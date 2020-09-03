class TemperaturesController < ApplicationController
  skip_before_action :verify_authenticity_token

    def new
      @user_preference = current_user.user_preference
      @breakpoints = @user_preference.temp_br1.to_s + "," + @user_preference.temp_br2.to_s + "," + @user_preference.temp_br3.to_s + "," + @user_preference.temp_br4.to_s
    end

  def set_breakpoints
    @user_preference = current_user.user_preference
    breakpoints = params["_json"]

    breakpoints.each_with_index do |breakpoint, i|
      key = "temp_br#{i + 1}"
      @user_preference[key] = breakpoint
    end
    if @user_preference.save!
      redirect_to dashboards_url, notice: 'Your temperature ranges were successfully created.'
    end
  end
end
