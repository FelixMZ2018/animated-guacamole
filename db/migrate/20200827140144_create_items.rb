class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :item_name
      t.integer :lowest_temperature
      t.integer :highest_temperature
      t.string :color
      t.timestamps
    end

    create_table :wardrobe_templates do |t|
      t.string :category
      t.string :svg    
      t.timestamps
    end
    
  end
end
