class Event < ApplicationRecord
  belongs_to :user
  has_many :event_attendees, class_name: 'Attendee', foreign_key: 'attended_event_id'
  has_many :event_users, through: :event_attendees, source: :attendee
  scope :future_events, -> { where('date >= ? ', Date.today) }
  scope :past_events, -> { where('date < ? ', Date.today) }

  # def self.past
  #   Event.all.where(' date < ? ', Date.today)
  # end

  # def self.future
  #   Event.all.where(' date >= ? ', Date.today)
  # end
end
