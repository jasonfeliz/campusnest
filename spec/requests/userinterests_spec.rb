require 'rails_helper'

RSpec.describe "Userinterests", type: :request do
  describe "GET /userinterests" do
    it "works! (now write some real specs)" do
      get userinterests_path
      expect(response).to have_http_status(200)
    end
  end
end
