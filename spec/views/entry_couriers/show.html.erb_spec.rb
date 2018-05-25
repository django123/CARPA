require 'rails_helper'

RSpec.describe "entry_couriers/show", type: :view do
  before(:each) do
    @entry_courier = assign(:entry_courier, EntryCourier.create!(
      :reference => "Reference",
      :subject => "MyText",
      :sender => "Sender",
      :receveir => "Receveir",
      :orderNumber => "Order Number",
      :file => "File",
      :user => nil,
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reference/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Sender/)
    expect(rendered).to match(/Receveir/)
    expect(rendered).to match(/Order Number/)
    expect(rendered).to match(/File/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
