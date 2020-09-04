class UserPreferencesController < ApplicationController
  skip_before_action :verify_authenticity_token

    def update
        @user_preference = current_user.user_preference
        @avatar_templates = AvatarStyle.find_by_id(params['user_preference']['hairstyle'])
         @user_preference.avatar_rendering_string = create_avatar(@user_preference.skin_tone,@avatar_templates)
            if @user_preference.update(preferences_params)
              if @user_preference.address_changed? || @user_preference.latitude_changed?
              @user_preference.city = Geocoder.search(@user_preference.address).first.city
               @user_preference.save
               puts "Geocoded City"
              end
              redirect_to dashboards_path, notice: 'Preferences were successfully updated.'
            else
              render :edit
            end
        end

    def edit
      @user_preference = current_user.user_preference
      @avatar_templates = AvatarStyle.all
    end

    def create_avatar(skin_color,avatar)
      rendering_string = avatar.rendering_template
      return rendering_string.gsub("**SKIN_COLOR**",@user_preference.skin_tone)
    end

  private

  def preferences_params
    params.require(:user_preference).permit(:city, :temp_br1, :temp_br2, :temp_br3, :temp_br4, :notification_time, :name, :avatar, :address, :skin_tone, :hairstyle ,:avatar_rendering_string)
  end
end
