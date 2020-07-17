# User Database
class User < ApplicationRecord
  has_many :event, class_name: 'Event', foreign_key: 'user_id'
  has_many :user_attendees, class_name: 'Attendee', foreign_key: 'attendee_id'
  has_many :user_events, through: :user_attendees, source: :attended_event

  def upcoming_events
    event.where('date >= ? ', Date.today)
  end

  def previous_events
    event.where('date < ? ', Date.today)
  end
end
