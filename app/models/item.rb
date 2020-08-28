class Item < ApplicationRecord
    belongs_to :wardrobe_template, foreign_key: "wardrobe_templates_id"
    belongs_to :user_preference, class_name: "user_preference", foreign_key: "user_preference_id"
end
