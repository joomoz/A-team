require "rails_helper"

RSpec.describe IncollectionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/incollections").to route_to("incollections#index")
    end

    it "routes to #new" do
      expect(:get => "/incollections/new").to route_to("incollections#new")
    end

    it "routes to #show" do
      expect(:get => "/incollections/1").to route_to("incollections#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/incollections/1/edit").to route_to("incollections#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/incollections").to route_to("incollections#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/incollections/1").to route_to("incollections#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/incollections/1").to route_to("incollections#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/incollections/1").to route_to("incollections#destroy", :id => "1")
    end

  end
end
