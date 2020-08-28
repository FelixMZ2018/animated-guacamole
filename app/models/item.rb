class Item < ApplicationRecord
    belongs_to :wardrobe_template, foreign_key: "wardrobe_templates_id"
end
