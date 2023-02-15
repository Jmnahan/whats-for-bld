require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create :user }
 
  context 'on create' do
    it 'role should be user by default' do
      created_user = user
        expect(created_user.user?).to be true
    end
  end

  describe 'Username' do
    it 'should have a username' do
      created_user = user
        expect(user.username).to be_truthy
    end
  end

end
