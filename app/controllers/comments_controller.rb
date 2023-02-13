class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_recipe

  def create
    @comment = @recipe.comments.build(text: comment_params[:text], user_id: current_user.id, recipe_id: @recipe.id)
    if @comment.save
      redirect_to recipe_path(@recipe) 
    else
      render :new
    end
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