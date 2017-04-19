require "rails_helper"

RSpec.describe BibtexesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/bibtexes").to route_to("bibtexes#index")
    end

    it "routes to #new" do
      expect(:get => "/bibtexes/new").to route_to("bibtexes#new")
    end

    it "routes to #show" do
      expect(:get => "/bibtexes/1").to route_to("bibtexes#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/bibtexes/1/edit").to route_to("bibtexes#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/bibtexes").to route_to("bibtexes#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/bibtexes/1").to route_to("bibtexes#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/bibtexes/1").to route_to("bibtexes#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/bibtexes/1").to route_to("bibtexes#destroy", :id => "1")
    end

  end
end
