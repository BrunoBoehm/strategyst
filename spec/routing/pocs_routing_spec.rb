require "rails_helper"

RSpec.describe PocsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/pocs").to route_to("pocs#index")
    end

    it "routes to #new" do
      expect(:get => "/pocs/new").to route_to("pocs#new")
    end

    it "routes to #show" do
      expect(:get => "/pocs/1").to route_to("pocs#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/pocs/1/edit").to route_to("pocs#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/pocs").to route_to("pocs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/pocs/1").to route_to("pocs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/pocs/1").to route_to("pocs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/pocs/1").to route_to("pocs#destroy", :id => "1")
    end

  end
end
