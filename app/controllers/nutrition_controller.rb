
class NutritionController < ApplicationController

  def analyze
    @ingredient = params[:ingredient]
    @results = Edamam::Client.analyze_nutrition(@ingredient)
  end

end