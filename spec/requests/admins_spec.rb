require 'rails_helper'

RSpec.describe 'Admins', type: :request do
  let(:user) {create :user}
  let(:recipe) { create :recipe }
  let(:comment) { create :comment }

  before :each do 
    @admin = create(:user, role: "admin")
    sign_in @admin
  end

  describe 'GET /' do
    it 'should return http success' do
      get root_path
      expect(response).to be_successful
    end

    it 'should return http success' do
      get users_path
      expect(response).to be_successful
    end
  end

  describe 'Delete /recipes/:id' do
    it 'should delete a recipe' do
      recipe = create(:recipe)
      before_count = Recipe.count
      delete recipe_path(recipe)
      expect(Recipe.count).to eq(before_count - 1)
    end
  end

  describe 'Delete /users/:id' do
    it 'should delete a user' do
      user = create(:user)
      before_count = User.count
      delete user_path(user)
      expect(User.count).to eq(before_count - 1)
    end
  end

  describe 'Delete /users/:id' do
    it 'should delete a user' do
      user = create(:user)
      recipe = create(:recipe)
      comment = create(:comment, user: user, recipe: recipe)
      before_count = recipe.comments.count
      delete recipe_comment_path(recipe, comment)
      expect(recipe.comments.count).to eq(before_count - 1)
    end
  end

end
