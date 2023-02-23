require 'rails_helper'

RSpec.describe "Comments", type: :request do
  let(:user) {create :user}
  let(:comment) { create :comment }
  let(:recipe) { create :recipe }
  
  before :each do
    sign_in user
  end

  describe 'Post new comment' do
    let(:valid_params) { { user: user, recipe: recipe, text: "This is comment" } }

    it 'it should redirect to root_path' do
      post recipe_comments_path(recipe, comment), params: { comment: valid_params }
      expect(response).to redirect_to recipe_path(recipe) 
    end

    it 'should create a new recipe' do
      expect { post recipe_comments_path(recipe, comment), params: { comment: valid_params } }.to change { recipe.comments.count}.by(1)
    end
  end

  describe 'Delete recipe' do
    it 'should return http success' do
      comment = create(:comment, user: user, recipe: recipe)
      delete recipe_comment_path(recipe, comment)
      expect(response).to redirect_to recipe_path(recipe)
    end
  end
end
