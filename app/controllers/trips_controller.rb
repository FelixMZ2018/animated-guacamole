class TripsController < ApplicationController
  def new
    @trip = Trip.new
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.id)
  end

  def create
    @trip = Trip.new(trips_params)
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.id)
    @trip.user_preference_id = @user_preferences.id
    if @trip.save!
      redirect_to dashboards_url, notice: 'Your travel was successfully created.'
        else
          render :new
      end
  end

  private

  def trips_params
    params.require(:trip).permit(:destination, :trip_start_date, :trip_end_date)
  end
end
