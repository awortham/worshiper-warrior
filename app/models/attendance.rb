class Attendance < ApplicationRecord
  belongs_to :member
  validates_presence_of :date

  scope :most_recent, -> { order(date: :desc) }
end
