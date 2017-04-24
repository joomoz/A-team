require 'rails_helper'

RSpec.describe "Miscs", type: :request do
  describe "GET /miscs" do
    it "works! (now write some real specs)" do
      get miscs_path
      expect(response).to have_http_status(200)
    end
  end
end
