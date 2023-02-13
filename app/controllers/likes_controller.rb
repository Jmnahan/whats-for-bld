class LikesController < ApplicationController
  before_action :find_recipe
  before_action :find_like, only: [:destroy]

  def create
    @recipe.likes.create(user_id: current_user.id)
    redirect_to recipe_path(@recipe)
  end

  def destroy
    if (already_liked?)
      @like.destroy
    end
    redirect_to recipe_path(@recipe)
  end

  private

  def find_like
    @like = @recipe.likes.find(params[:id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, recipe_id:
    params[:recipe_id]).exists?
  end

  def find_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end
end
