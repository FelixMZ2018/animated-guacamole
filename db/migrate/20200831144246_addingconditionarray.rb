class Addingconditionarray < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :condition_array, :string
    #Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
