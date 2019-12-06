# frozen_string_literal: true

class Event < ApplicationRecord
  validates :title, presence: true
  validates_presence_of :details, on: :create, message: "can't be blank"
  validates_presence_of :date, on: :create, message: "can't be blank"
  validates_presence_of :location, on: :create, message: "can't be blank"

  belongs_to :creator, class_name: :User, foreign_key: :creator_id
  has_many :event_users
  has_many :attendees, -> { distinct }, through: :event_users, source: 'user'

  scope :upcoming, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }

  def is_creator
    return true if creator.id

    false
  end

  def is_past?
    return true if -> { where('date >=?', Date.today) }

    false
  end
end
