class User < ApplicationRecord
  before_save { self.email = email.downcase }

  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
  validates_presence_of :name, on: :create, message: "can't be blank"

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i.freeze
  validates :email, presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX },
  uniqueness: { case_sensitive: false }

 
  has_many :events, class_name: :Event, dependent: :destroy, foreign_key: :creator_id
  has_many :user_events
end
