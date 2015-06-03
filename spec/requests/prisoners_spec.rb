require 'rails_helper'

RSpec.describe "Prisoners", type: :request do
  describe "GET /prisoners" do
    it "works! (now write some real specs)" do
      get prisoners_path
      expect(response).to have_http_status(200)
    end
  end
end
