class AvatarStyle < ApplicationRecord
    has_many :user_preferences, foreign_key: "user_preference_id"
end
