class MemberResource < Avo::BaseResource
  self.title = :name
  self.includes = []
  self.search_query = -> do
    scope.ransack(name_cont: params[:q], m: "or").result(distinct: false)
  end

  field :name, as: :text
  field :most_recent_attendance_date, as: :text, hide_on: :forms
  field :table_lead, as: :boolean
  field :table, as: :belongs_to
  field :attendances, as: :has_many
end
