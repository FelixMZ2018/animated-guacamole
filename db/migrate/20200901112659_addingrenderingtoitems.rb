class Addingrenderingtoitems < ActiveRecord::Migration[6.0]
  def change
    add_column :items, :render_string, :string
  end
end
