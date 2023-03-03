class RecipesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipes = current_user.recipes.all.order(created_at: :desc)
  end

  def new
    @recipe = current_user.recipes.build
  end

  def create
   @recipe = current_user.recipes.build recipe_params

    if @recipe.save
      redirect_to recipes_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @recipe = Recipe.find(params[:id])
    @comment = Comment.new
    @comments = @recipe.comments

  end

  def analyze
    @recipe = Recipe.find(params[:id])
    @ingredient = @recipe.ingredient
    @nutritions = @ingredient.split(',')
    @calorie = []
    @fat = []
    
    @nutritions.each do |nutrition|
      @result = Edamam::Client.analyze_nutrition(nutrition)
      @calorie.push(@result['calories'])
    end

    def sum(array)
      array.reduce(:+)
    end

    @totalcal = sum(@calorie)

  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])

    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to recipes_path
  end

  def likes
    @recipe = current_user.likes
  end
  
  private

  def recipe_params
   params.require(:recipe).permit(:dish_name, :ingredient, :direction, :suggestion, :banner)
  end
  
  
end
