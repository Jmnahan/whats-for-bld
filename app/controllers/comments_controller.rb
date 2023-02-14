class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_recipe

  def create
    @comment = @recipe.comments.new(comment_params)
    @comment.user = current_user
    @comment.save 
    redirect_to recipe_path(@recipe) 
  end

  def destroy
    @comment = @recipe.comments.find(params[:id])
    @comment.destroy
    redirect_to recipe_path(@recipe) 
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.require(:comment).permit(:text, :recipe_id)
  end
end