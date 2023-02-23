require 'rails_helper'

RSpec.describe "Recipes", type: :request do
  let(:user) {create :user}
  let(:recipe) { create :recipe }
  let(:recipe_attributes) { attributes_for :recipe }

  before :each do
    sign_in user
  end

  describe 'GET index, show, and liked recipes pages' do
    it 'should return http success' do
      get recipes_path
      expect(response).to be_successful
    end

    it 'should return http success' do
      get recipe_path(recipe)
      expect(response).to be_successful
    end

    it 'should return http success' do
      get liked_recipes_path
      expect(response).to be_successful
    end
  end

  describe 'Post new recipe' do
    context 'with valid params' do
      let(:valid_params) { { user: user, dish_name: 'This is dish name',
                                         ingredient: 'These are the ingredients',
                                         direction: 'These are the directions for this recipe' } }

      it 'it should redirect to root_path' do
        post recipes_path(recipe), params: { recipe: valid_params }
        expect(response).to redirect_to root_path
      end

      it 'should create a new recipe' do
        expect { post recipes_path(recipe), params: { recipe: valid_params } }.to change { Recipe.count}.by(2)
      end
    end

    context 'with invalid params' do
      let(:invalid_params) { { user: nil, dish_name: nil,
                                          ingredient: 'These are the ingredients',
                                          direction: 'These are the directions for this recipe' } }

      it 'should render new recipe page' do
        post recipes_path(recipe), params: { recipe: invalid_params }
        expect(response).not_to have_http_status(:redirect) 
      end
    end
  end

  describe 'Update recipe' do
    it 'should return http success' do
      patch recipe_path(recipe), params: { recipe: recipe_attributes  }
      expect(response).to redirect_to recipes_path
    end
  end

  describe 'Delete recipe' do
    it 'should return http success' do
      created_recipe = create(:recipe)
      delete recipe_path(created_recipe)
      expect(response).to redirect_to root_path
    end
  end
end
