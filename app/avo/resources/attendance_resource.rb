class AttendanceResource < Avo::BaseResource
  self.title = :member
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :member, as: :belongs_to
  field :date, as: :date
end
