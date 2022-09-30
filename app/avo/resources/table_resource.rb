class TableResource < Avo::BaseResource
  self.title = :number
  self.includes = []
  # self.search_query = -> do
  #   scope.ransack(id_eq: params[:q], m: "or").result(distinct: false)
  # end

  field :number, as: :number
  field :table_lead, as: :has_one
  field :members, as: :has_many
end
