class Meeting < ApplicationRecord
  has_many :meeting_speakers
  has_many :speakers, through: :meeting_speakers
  validates :title, :agenda, :location, :time, presence: true
  validate :time_cannot_be_in_the_past,
           def time_cannot_be_in_the_past
             if time.present? && time < Time.now
               errors.add(:time, "It cannot be in the past.")
             end
           end
end
