require "rails_helper"

RSpec.describe StatutCouriersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/statut_couriers").to route_to("statut_couriers#index")
    end

    it "routes to #new" do
      expect(:get => "/statut_couriers/new").to route_to("statut_couriers#new")
    end

    it "routes to #show" do
      expect(:get => "/statut_couriers/1").to route_to("statut_couriers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/statut_couriers/1/edit").to route_to("statut_couriers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/statut_couriers").to route_to("statut_couriers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/statut_couriers/1").to route_to("statut_couriers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/statut_couriers/1").to route_to("statut_couriers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/statut_couriers/1").to route_to("statut_couriers#destroy", :id => "1")
    end

  end
end
