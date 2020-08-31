class AddTripEndDateToUserPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :trip_end_date, :date
  end
end
