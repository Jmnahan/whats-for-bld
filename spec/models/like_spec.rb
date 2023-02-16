require 'rails_helper'

RSpec.describe Like, type: :model do
  let(:like) { create :like }
  
  before do
    @user1 = create(:user)
    @recipe1 = create(:recipe)
    like = create(:like, user: @user1, recipe: @recipe1)
  end

  describe 'Like counter' do
    it 'Returns number of likes' do
      expect(@recipe1.likes.count).to eq(1)
    end

    it 'User can only like once' do 
      like = build(:like, user: @user1, recipe: @recipe1)
      expect(like.save).to be false
    end
  end
end
