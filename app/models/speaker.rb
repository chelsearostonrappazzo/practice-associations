class Speaker < ApplicationRecord
  has_many :meeting_speakers
  has_many :meetings, through: :meeting_speakers
  validates :first_name, :last_name, :email, presence: true
end
