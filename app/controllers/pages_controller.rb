class PagesController < ApplicationController
  def landing
    @recipes = Recipe.all.order(created_at: :desc)
  end
end
