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

  # def edit
  #   @comment = @recipe.comments.find(params[:id])
  # end

  # def update
  #   @comment = current_user.comments.find(params[:id])
  #   if @comment.update(comment_params)
  #     redirect_to recipe_path(@recipe) 
  #   else 
  #     render :edit, status: :unprocessable_entity
  #   end
  # end

  def destroy
    @comment = current_user.comments.find(params[:id])
    @comment.destroy   
    redirect_to recipe_path(@recipe) 
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end