class HomesController < ApplicationController
  before_action :redirect_to_admin

  def index
  end

  private

  def redirect_to_admin
    redirect_to "/admin/resources/tables"
  end
end
