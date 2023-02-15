require 'rails_helper'

RSpec.describe Recipe, type: :model do
  let(:recipe) { create :recipe }

  describe 'Dish name' do
    it 'should be present' do
      recipe = build :recipe, dish_name: nil
      expect(recipe.save).to be false
    end

    it 'should be atleast 5 characters' do
      recipe = build :recipe, dish_name: "dish"
      expect(recipe.save).to be false
    end
  end

  describe 'Ingredient' do
    it 'should be present' do
      recipe = build :recipe, ingredient: nil
      expect(recipe.save).to be false
    end

    it 'should be atleast 10 characters' do
      recipe = build :recipe, ingredient: "testing"
      expect(recipe.save).to be false
    end
  end

  describe 'Direction' do
    it 'should be present' do
      recipe = build :recipe, direction: nil
      expect(recipe.save).to be false
    end

    it 'should be atleast 10 characters' do
      recipe = build :recipe, direction: "testing"
      expect(recipe.save).to be false
    end
  end
end
