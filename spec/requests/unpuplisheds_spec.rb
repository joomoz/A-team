require 'rails_helper'

RSpec.describe "Unpuplisheds", type: :request do
  describe "GET /unpuplisheds" do
    it "works! (now write some real specs)" do
      get unpuplisheds_path
      expect(response).to have_http_status(200)
    end
  end
end
