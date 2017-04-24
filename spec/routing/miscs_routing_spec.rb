require "rails_helper"

RSpec.describe MiscsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/miscs").to route_to("miscs#index")
    end

    it "routes to #new" do
      expect(:get => "/miscs/new").to route_to("miscs#new")
    end

    it "routes to #show" do
      expect(:get => "/miscs/1").to route_to("miscs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/miscs/1/edit").to route_to("miscs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/miscs").to route_to("miscs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/miscs/1").to route_to("miscs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/miscs/1").to route_to("miscs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/miscs/1").to route_to("miscs#destroy", :id => "1")
    end

  end
end
