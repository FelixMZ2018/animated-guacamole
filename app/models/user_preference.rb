class UserPreference < ApplicationRecord
    belongs_to :user, foreign_key: "user_id"
    geocoded_by :address
    after_validation :geocode, if: :will_save_change_to_address?
end
