class Addingrenderinggroup < ActiveRecord::Migration[6.0]
  def change
    add_column :wardrobe_templates, :rendering_group, :string

  end
end
