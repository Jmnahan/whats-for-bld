require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:comment) { create :comment }

  describe 'Comment' do
    it 'should have text' do
      comment = build :comment, text: nil
      expect(comment.save).to be false
    end
  end

  describe 'Comment counter' do
    before do
      @user1 = create(:user)
      @recipe1 = create(:recipe)
      comment = create(:comment, user: @user1, recipe: @recipe1)
    end

    it "Returns number of posts for a user" do
      expect(@recipe1.comments.count).to eq(1)
    end
  end
end
