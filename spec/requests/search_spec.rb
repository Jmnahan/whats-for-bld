require 'rails_helper'

RSpec.describe "Searches", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get search_path
      expect(response).to be_successful
    end
  end
end
