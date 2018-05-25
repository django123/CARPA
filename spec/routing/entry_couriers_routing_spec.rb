require "rails_helper"

RSpec.describe EntryCouriersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/entry_couriers").to route_to("entry_couriers#index")
    end

    it "routes to #new" do
      expect(:get => "/entry_couriers/new").to route_to("entry_couriers#new")
    end

    it "routes to #show" do
      expect(:get => "/entry_couriers/1").to route_to("entry_couriers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/entry_couriers/1/edit").to route_to("entry_couriers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/entry_couriers").to route_to("entry_couriers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/entry_couriers/1").to route_to("entry_couriers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/entry_couriers/1").to route_to("entry_couriers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/entry_couriers/1").to route_to("entry_couriers#destroy", :id => "1")
    end

  end
end
