require 'rails_helper'

RSpec.describe "ArchiveReleaseCouriers", type: :request do
  describe "GET /archive_release_couriers" do
    it "works! (now write some real specs)" do
      get archive_release_couriers_path
      expect(response).to have_http_status(200)
    end
  end
end
