class AddUserIdToUserPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :user_id, :integer
    add_index :user_preferences, :user_id
  end
end
