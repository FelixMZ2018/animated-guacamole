class Trip < ApplicationRecord
  belongs_to :user_preference, foreign_key: "user_preference_id", optional: true
end
