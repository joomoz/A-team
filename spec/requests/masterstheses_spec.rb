require 'rails_helper'

RSpec.describe "Masterstheses", type: :request do
  describe "GET /masterstheses" do
    it "works! (now write some real specs)" do
      get masterstheses_path
      expect(response).to have_http_status(200)
    end
  end
end
