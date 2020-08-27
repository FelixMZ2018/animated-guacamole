class Addingmorelocation < ActiveRecord::Migration[6.0]
  def change
    add_column :user_preferences, :city, :string, :default => "Berlin"
    add_column :user_preferences, :temp_br1, :integer, :default =>  0
    add_column :user_preferences, :temp_br2, :integer, :default =>  10
    add_column :user_preferences, :temp_br3, :integer, :default =>  20
    add_column :user_preferences, :temp_br4, :integer, :default =>  30
    add_column :user_preferences, :notification_time, :time
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")

    ## VERY COLD  - BR1 - COLD - BR2 - MEDIUM - BR3 - WARM - BR4 - VERY WARM

    #Ex:- :default =>''
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
