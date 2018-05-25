require 'rails_helper'

RSpec.describe "ReleaseCouriers", type: :request do
  describe "GET /release_couriers" do
    it "works! (now write some real specs)" do
      get release_couriers_path
      expect(response).to have_http_status(200)
    end
  end
end
