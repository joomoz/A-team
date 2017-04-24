require "rails_helper"

RSpec.describe PhdthesesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/phdtheses").to route_to("phdtheses#index")
    end

    it "routes to #new" do
      expect(:get => "/phdtheses/new").to route_to("phdtheses#new")
    end

    it "routes to #show" do
      expect(:get => "/phdtheses/1").to route_to("phdtheses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/phdtheses/1/edit").to route_to("phdtheses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/phdtheses").to route_to("phdtheses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/phdtheses/1").to route_to("phdtheses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/phdtheses/1").to route_to("phdtheses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/phdtheses/1").to route_to("phdtheses#destroy", :id => "1")
    end

  end
end
