require 'rails_helper'

RSpec.describe "statut_couriers/show", type: :view do
  before(:each) do
    @statut_courier = assign(:statut_courier, StatutCourier.create!(
      :statut => "Statut"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Statut/)
  end
end
