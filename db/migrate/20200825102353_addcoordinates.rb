class Addcoordinates < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :latitude, :float
    add_column :user_preferences, :longitude, :float
  end
end
