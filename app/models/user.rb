class User < ApplicationRecord
  has_many :user_events, class_name: 'Event', foreign_key: 'user_id'
  has_many :users_events, class_name: 'Attendee', foreign_key: 'attendee_id'
  has_many :events, through: :attendees, source: :events
end
