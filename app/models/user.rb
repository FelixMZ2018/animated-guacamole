class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :user_preference, dependent: :destroy
  after_create :init_user_preferences


  def init_user_preferences
    self.create_user_preference!
  end

end
