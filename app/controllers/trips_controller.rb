class TripsController < ApplicationController

  def new
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.user_preference.id)

    if Trip.where(user_preference_id: @user_preferences.id).empty?
    @trip = Trip.new
    else redirect_to trips_path
    end


  end

  def create
    @trip = Trip.new(trips_params)
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.user_preference.id)
    @trip.user_preference_id = @user_preferences.id

    if @trip.save!
      redirect_to dashboards_url, notice: 'Your travel was successfully created.'
    else
      render :new, notice: 'Trip was not added'
    end
  end

  def index
    @user = current_user
    @user_preferences = UserPreference.find_by_id(@user.user_preference.id)
    @trips = Trip.where(user_preference_id: @user_preferences.id)
  end

  def destroy
    @trip = Trip.where(@params[:id])
    @trip.destroy
    redirect_to dashboards_path
  end


  private

  def trips_params
    params.require(:trip).permit(:destination, :trip_start_date, :trip_end_date)
  end
end
