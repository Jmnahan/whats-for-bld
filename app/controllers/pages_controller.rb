class PagesController < ApplicationController
  def landing
  end

  def feed
    @recipes = Recipe.all.order(created_at: :desc)
  end
end
