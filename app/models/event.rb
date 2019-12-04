class Event < ApplicationRecord

  validates :title, presence: true
  validates_presence_of :details, on: :create, message: "can't be blank"
  validates_presence_of :date, on: :create, message: "can't be blank"
  validates_presence_of :location, on: :create, message: "can't be blank"

  
  belongs_to :creator, class_name: :User, foreign_key: :creator_id
end
