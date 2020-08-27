class UserPreferencesController < ApplicationController

    def update
        @user_preference = current_user.user_preference
            if @user_preference.update(preferences_params)
              redirect_to @user_preference, notice: 'Preferences were successfully updated.'
            else
              render :edit
            end
        
    end
    
    def edit
        @user_preference = current_user.user_preference

        
    end 

    private

    def preferences_params
        params.require(:user_preference).permit(:city,:temp_br1,:temp_br2,:temp_br3,:temp_br4,:notification_time,:name )


        
    end
    
    
end
