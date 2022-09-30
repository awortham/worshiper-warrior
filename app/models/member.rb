class Member < ApplicationRecord
  has_many :attendances

  has_one :most_recent_attendance,
    -> { most_recent },
    class_name: "Attendance"

  belongs_to :table

  scope :table_lead, -> { where(table_lead: true) }
  scope :not_table_leads, -> { where(table_lead: false) }

  def most_recent_attendance_date
    most_recent_attendance&.date&.strftime("%Y / %m / %d")
  end
end
