require "rails_helper"

RSpec.describe ValuePropositionsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/value_propositions").to route_to("value_propositions#index")
    end

    it "routes to #new" do
      expect(:get => "/value_propositions/new").to route_to("value_propositions#new")
    end

    it "routes to #show" do
      expect(:get => "/value_propositions/1").to route_to("value_propositions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/value_propositions/1/edit").to route_to("value_propositions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/value_propositions").to route_to("value_propositions#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/value_propositions/1").to route_to("value_propositions#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/value_propositions/1").to route_to("value_propositions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/value_propositions/1").to route_to("value_propositions#destroy", :id => "1")
    end

  end
end
