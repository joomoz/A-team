require "rails_helper"

RSpec.describe MastersthesesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/masterstheses").to route_to("masterstheses#index")
    end

    it "routes to #new" do
      expect(:get => "/masterstheses/new").to route_to("masterstheses#new")
    end

    it "routes to #show" do
      expect(:get => "/masterstheses/1").to route_to("masterstheses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/masterstheses/1/edit").to route_to("masterstheses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/masterstheses").to route_to("masterstheses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/masterstheses/1").to route_to("masterstheses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/masterstheses/1").to route_to("masterstheses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/masterstheses/1").to route_to("masterstheses#destroy", :id => "1")
    end

  end
end
