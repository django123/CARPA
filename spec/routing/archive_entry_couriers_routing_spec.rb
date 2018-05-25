require "rails_helper"

RSpec.describe ArchiveEntryCouriersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/archive_entry_couriers").to route_to("archive_entry_couriers#index")
    end

    it "routes to #new" do
      expect(:get => "/archive_entry_couriers/new").to route_to("archive_entry_couriers#new")
    end

    it "routes to #show" do
      expect(:get => "/archive_entry_couriers/1").to route_to("archive_entry_couriers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/archive_entry_couriers/1/edit").to route_to("archive_entry_couriers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/archive_entry_couriers").to route_to("archive_entry_couriers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/archive_entry_couriers/1").to route_to("archive_entry_couriers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/archive_entry_couriers/1").to route_to("archive_entry_couriers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/archive_entry_couriers/1").to route_to("archive_entry_couriers#destroy", :id => "1")
    end

  end
end
