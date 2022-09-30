class Table < ApplicationRecord
  has_many :members, -> { not_table_leads }
  has_one :table_lead,
    -> { table_lead },
    class_name: "Member"
end
