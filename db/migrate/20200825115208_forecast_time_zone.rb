class ForecastTimeZone < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :forecast, :text
    add_column :user_preferences, :forecast_timestamp, :datetime

  end
end
