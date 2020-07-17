class Event < ApplicationRecord
  belongs_to :user
  has_many :events_user, class_name: 'Attendee', foreign_key: 'attended_event_id'
  has_many :users, through: :attendees, source: :User
  # scope :past, -> { where('date <', Date.today) }
  # scope :future, -> { where('date >=', Date.today) }
end
