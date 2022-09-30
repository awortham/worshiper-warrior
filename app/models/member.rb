class Member < ApplicationRecord
  belongs_to :table

  scope :table_lead, -> { where(table_lead: true) }
  scope :not_table_leads, -> { where(table_lead: false) }
end
