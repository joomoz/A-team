require 'rails_helper'

RSpec.describe "Proceedings", type: :request do
  describe "GET /proceedings" do
    it "works! (now write some real specs)" do
      get proceedings_path
      expect(response).to have_http_status(200)
    end
  end
end
