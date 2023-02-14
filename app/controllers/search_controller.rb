class SearchController < ApplicationController
  def index
    @query = Recipe.ransack(params[:q])
    @recipes = @query.result(distinct: true).includes(:user)
  end
end
