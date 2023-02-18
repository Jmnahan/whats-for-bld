require 'rails_helper'

RSpec.describe Comment, type: :model do
  let(:user) {create :user}
  let(:recipe) { create :recipe }
  let(:comment) { create :comment }

  describe 'Comment' do
    it 'should have text' do
      comment = build :comment, text: nil
      expect(comment.save).to be false
    end
  end

  describe 'Comment counter' do
    before do
      comment = create(:comment, user: user, recipe: recipe)
    end

    it "Returns number of posts for a user" do
      expect(recipe.comments.count).to eq(1)
    end
  end
end
