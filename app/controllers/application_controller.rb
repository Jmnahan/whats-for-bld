class ApplicationController < ActionController::Base
  before_action :set_query

  def set_query
    @query = Recipe.ransack(params[:q])
  end
end
