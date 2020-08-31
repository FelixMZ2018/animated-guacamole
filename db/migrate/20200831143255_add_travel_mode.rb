class AddTravelMode < ActiveRecord::Migration[6.0]
  def change
    remove_column :user_preferences, :trip_end_date

    create_table :trips do |t|
      t.string :destination
      t.date :trip_start_date
      t.date :trip_end_date

      t.timestamps
    end
    add_index :trips, :user_preference_id

  end
end
