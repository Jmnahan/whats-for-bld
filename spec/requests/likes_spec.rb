require 'rails_helper'

RSpec.describe "Likes", type: :request do
  let(:like) { create :like }

  before do
    @user = create(:user)
    @recipe = create(:recipe)
    like = create(:like, user: @user, recipe: @recipe)
  end

  describe 'can be createad' do
    it 'Returns number of likes' do
      expect(@recipe.likes.count).to eq(1)
    end
  end
end
