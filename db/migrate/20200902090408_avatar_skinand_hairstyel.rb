class AvatarSkinandHairstyel < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :hairstyle, :string
    add_column :user_preferences, :skin_tone, :string, :default => "#C58C85"
    add_column :user_preferences, :avatar_rendering_string , :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    create_table :avatar_styles do |t|
      t.string :name
      t.string :gender
      t.string :rendering_template
      t.belongs_to :user_preference, index: true
      t.timestamps
  end
end
end