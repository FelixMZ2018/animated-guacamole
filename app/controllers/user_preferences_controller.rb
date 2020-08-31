class UserPreferencesController < ApplicationController

    def update
        @user_preference = current_user.user_preference
            if @user_preference.update(preferences_params)
              redirect_to dashboards_path, notice: 'Preferences were successfully updated.'
            else
              render :edit
            end
      end

    def edit
      @user_preference = current_user.user_preference
    end

    def travel
      @trip = Trip.new
      @user = current_user
      @user_preferences = UserPreference.find_by_id(@user.id)
    end


  private

  def preferences_params
    params.require(:user_preference).permit(:city, :temp_br1, :temp_br2, :temp_br3, :temp_br4, :notification_time, :name, :avatar, :address)
  end
end
