require 'rails_helper'

RSpec.describe "statut_couriers/index", type: :view do
  before(:each) do
    assign(:statut_couriers, [
      StatutCourier.create!(
        :statut => "Statut"
      ),
      StatutCourier.create!(
        :statut => "Statut"
      )
    ])
  end

  it "renders a list of statut_couriers" do
    render
    assert_select "tr>td", :text => "Statut".to_s, :count => 2
  end
end
