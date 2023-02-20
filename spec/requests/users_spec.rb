require 'rails_helper'

RSpec.describe "Users", type: :request do
  let(:user) {create :user}

  before :each do 
    @user = create(:user, role: "user")
    sign_in @user
  end

  describe 'GET /' do
    it 'should return http success' do
      get users_path
      expect(response.status).to eq(302)
    end
  end

end
