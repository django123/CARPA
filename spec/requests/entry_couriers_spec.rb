require 'rails_helper'

RSpec.describe "EntryCouriers", type: :request do
  describe "GET /entry_couriers" do
    it "works! (now write some real specs)" do
      get entry_couriers_path
      expect(response).to have_http_status(200)
    end
  end
end
