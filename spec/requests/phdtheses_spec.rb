require 'rails_helper'

RSpec.describe "Phdtheses", type: :request do
  describe "GET /phdtheses" do
    it "works! (now write some real specs)" do
      get phdtheses_path
      expect(response).to have_http_status(200)
    end
  end
end
