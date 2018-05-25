require "rails_helper"

RSpec.describe ReleaseCouriersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/release_couriers").to route_to("release_couriers#index")
    end

    it "routes to #new" do
      expect(:get => "/release_couriers/new").to route_to("release_couriers#new")
    end

    it "routes to #show" do
      expect(:get => "/release_couriers/1").to route_to("release_couriers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/release_couriers/1/edit").to route_to("release_couriers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/release_couriers").to route_to("release_couriers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/release_couriers/1").to route_to("release_couriers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/release_couriers/1").to route_to("release_couriers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/release_couriers/1").to route_to("release_couriers#destroy", :id => "1")
    end

  end
end
