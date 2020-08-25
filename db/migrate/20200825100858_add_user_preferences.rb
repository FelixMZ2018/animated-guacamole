class AddUserPreferences < ActiveRecord::Migration[6.0]
  def change  
    create_table :user_preferences do |t|
      t.string :default_address
      t.string :address
    end



  end
end
