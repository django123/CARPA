require 'rails_helper'

RSpec.describe "StatutCouriers", type: :request do
  describe "GET /statut_couriers" do
    it "works! (now write some real specs)" do
      get statut_couriers_path
      expect(response).to have_http_status(200)
    end
  end
end
