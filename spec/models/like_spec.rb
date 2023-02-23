require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:user) {create :user}
  let(:recipe) { create :recipe }
  let(:like) { create :like }
  
  before do
    like = create(:like, user: user, recipe: recipe)
  end

  describe 'Like counter' do
    it 'Returns number of likes' do
      expect(recipe.likes.count).to eq(1)
    end

    it 'User can only like once' do 
      like = build(:like, user: user, recipe: recipe)
      expect(like.save).to be false
    end
  end
end
