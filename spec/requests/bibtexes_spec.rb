require 'rails_helper'

RSpec.describe "Bibtexes", type: :request do
  describe "GET /bibtexes" do
    it "works! (now write some real specs)" do
      get bibtexes_path
      expect(response).to have_http_status(200)
    end
  end
end
