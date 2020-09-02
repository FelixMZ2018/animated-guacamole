class Trip < ApplicationRecord
  belongs_to :user_preference, foreign_key: "user_preference_id", optional: true

  validates :destination, presence: true
  validates :trip_start_date, presence: true
  validates :trip_end_date, presence: true

end


