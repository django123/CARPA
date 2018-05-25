require 'rails_helper'

RSpec.describe "release_couriers/show", type: :view do
  before(:each) do
    @release_courier = assign(:release_courier, ReleaseCourier.create!(
      :destination => "Destination",
      :reference => "Reference",
      :orderNumber => "Order Number",
      :project => nil,
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Destination/)
    expect(rendered).to match(/Reference/)
    expect(rendered).to match(/Order Number/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
