require 'rails_helper'

RSpec.describe "entry_couriers/index", type: :view do
  before(:each) do
    assign(:entry_couriers, [
      EntryCourier.create!(
        :reference => "Reference",
        :subject => "MyText",
        :sender => "Sender",
        :receveir => "Receveir",
        :orderNumber => "Order Number",
        :file => "File",
        :user => nil,
        :project => nil
      ),
      EntryCourier.create!(
        :reference => "Reference",
        :subject => "MyText",
        :sender => "Sender",
        :receveir => "Receveir",
        :orderNumber => "Order Number",
        :file => "File",
        :user => nil,
        :project => nil
      )
    ])
  end

  it "renders a list of entry_couriers" do
    render
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Sender".to_s, :count => 2
    assert_select "tr>td", :text => "Receveir".to_s, :count => 2
    assert_select "tr>td", :text => "Order Number".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
