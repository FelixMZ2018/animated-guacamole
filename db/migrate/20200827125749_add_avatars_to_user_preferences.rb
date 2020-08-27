class AddAvatarsToUserPreferences < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :avatar, :string, :default => "female"
  end
end
