class Event < ApplicationRecord
  belongs_to :user
  has_many :event_attendees, class_name: 'Attendee', foreign_key: 'attended_event_id'
  has_many :event_users, through: :event_attendees, source: :attendee
  scope :future_events, -> { where('date >=', Date.today) }
  scope :past_events, -> { where('date <', Date.today) }
  # scope :past_events, -> { where('date(created_at) < ?', Date.today).order("date DESC")}
  # scope :future_events, -> { where('date(created_at) >= ?', Date.today).order("date ASC")}
end
