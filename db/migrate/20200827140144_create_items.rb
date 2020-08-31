class CreateItems < ActiveRecord::Migration[6.0]
  def change


    create_table :wardrobe_templates do |t|
      t.string :category
      t.string :svg
      t.timestamps
    end

    create_table :items do |t|
      t.string :item_name
      t.string :lowest_temperature
      t.string :highest_temperature
      t.string :color
      t.belongs_to :user_preference, index: true
      t.belongs_to :wardrobe_templates, index: true

      t.timestamps
    end


  end
end
