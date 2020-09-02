class TemperaturesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def set_breakpoints
    @user_preference = current_user.user_preference
    breakpoints = params["_json"]

    breakpoints.each_with_index do |breakpoint, i|
      key = "temp_br#{i + 1}"
      @user_preference[key] = breakpoint
    end
  end
end
