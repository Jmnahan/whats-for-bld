require 'rails_helper'

RSpec.describe "Likes", type: :request do
  let(:like) { create :like }
  let(:user) {create :user}
  let(:recipe) { create :recipe }
  
  before do
    like = create(:like, user: user, recipe: recipe)
  end

  describe 'can be createad' do
    it 'Returns number of likes' do
      expect(recipe.likes.count).to eq(1)
    end
  end

  # describe 'can be destroyed' do
  #   it 'Returns number of likes' do
  #     delete recipe_like_path(@recipe)
  #     before_count = @recipe.likes.count
  #     expect(@recipe.likes.count).to eq(before_count - 1)
  #   end
  # end
end
