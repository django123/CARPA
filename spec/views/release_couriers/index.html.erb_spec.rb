require 'rails_helper'

RSpec.describe "release_couriers/index", type: :view do
  before(:each) do
    assign(:release_couriers, [
      ReleaseCourier.create!(
        :destination => "Destination",
        :reference => "Reference",
        :orderNumber => "Order Number",
        :project => nil,
        :user => nil
      ),
      ReleaseCourier.create!(
        :destination => "Destination",
        :reference => "Reference",
        :orderNumber => "Order Number",
        :project => nil,
        :user => nil
      )
    ])
  end

  it "renders a list of release_couriers" do
    render
    assert_select "tr>td", :text => "Destination".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "Order Number".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
