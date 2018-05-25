require "rails_helper"

RSpec.describe ArchiveProjectsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/archive_projects").to route_to("archive_projects#index")
    end

    it "routes to #new" do
      expect(:get => "/archive_projects/new").to route_to("archive_projects#new")
    end

    it "routes to #show" do
      expect(:get => "/archive_projects/1").to route_to("archive_projects#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/archive_projects/1/edit").to route_to("archive_projects#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/archive_projects").to route_to("archive_projects#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/archive_projects/1").to route_to("archive_projects#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/archive_projects/1").to route_to("archive_projects#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/archive_projects/1").to route_to("archive_projects#destroy", :id => "1")
    end

  end
end
