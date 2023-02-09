class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :get_recipe

  def index
    @comments = @recipe.comments
  end

  def new
    @comment = @recipe.comments.build
  end

  def create
    @comment = @recipe.comments.build(text: comment_params[:text], user_id: current_user.id, recipe_id: @recipe.id)
    
    if @comment.save
      redirect_to recipe_path(@recipe) 
    else
      render :new
    end
  end

  def show
    @comment = @recipe.comments.find(params[:id])
  end

  def edit
    @comment = @recipe.comments.find(params[:id])
  end

  def update
    @comment = @recipe.comments.find(params[:id])
    if @comment.update(comment_params)
      redirect_to root_path
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy

    redirect_to root_path
  end

  private

  def get_recipe
    @recipe = Recipe.find(params[:recipe_id])
  end

  def comment_params
    params.require(:comment).permit(:text)
  end
end