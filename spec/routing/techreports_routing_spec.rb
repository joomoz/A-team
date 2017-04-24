require "rails_helper"

RSpec.describe TechreportsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/techreports").to route_to("techreports#index")
    end

    it "routes to #new" do
      expect(:get => "/techreports/new").to route_to("techreports#new")
    end

    it "routes to #show" do
      expect(:get => "/techreports/1").to route_to("techreports#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/techreports/1/edit").to route_to("techreports#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/techreports").to route_to("techreports#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/techreports/1").to route_to("techreports#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/techreports/1").to route_to("techreports#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/techreports/1").to route_to("techreports#destroy", :id => "1")
    end

  end
end
