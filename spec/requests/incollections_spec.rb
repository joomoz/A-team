require 'rails_helper'

RSpec.describe "Incollections", type: :request do
  describe "GET /incollections" do
    it "works! (now write some real specs)" do
      get incollections_path
      expect(response).to have_http_status(200)
    end
  end
end
