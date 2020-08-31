class UserPreference < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    belongs_to :trip, foreign_key: "trip_id"
    has_many :items, class_name: "item", foreign_key: "item_id"
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
end
