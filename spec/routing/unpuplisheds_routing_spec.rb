require "rails_helper"

RSpec.describe UnpuplishedsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/unpuplisheds").to route_to("unpuplisheds#index")
    end

    it "routes to #new" do
      expect(:get => "/unpuplisheds/new").to route_to("unpuplisheds#new")
    end

    it "routes to #show" do
      expect(:get => "/unpuplisheds/1").to route_to("unpuplisheds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/unpuplisheds/1/edit").to route_to("unpuplisheds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/unpuplisheds").to route_to("unpuplisheds#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/unpuplisheds/1").to route_to("unpuplisheds#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/unpuplisheds/1").to route_to("unpuplisheds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/unpuplisheds/1").to route_to("unpuplisheds#destroy", :id => "1")
    end

  end
end
