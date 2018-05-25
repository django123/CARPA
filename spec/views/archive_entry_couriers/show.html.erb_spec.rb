require 'rails_helper'

RSpec.describe "archive_entry_couriers/show", type: :view do
  before(:each) do
    @archive_entry_courier = assign(:archive_entry_courier, ArchiveEntryCourier.create!(
      :user => nil,
      :entry_courier => nil,
      :description => "MyText",
      :name => "Name",
      :reference => "Reference",
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Reference/)
    expect(rendered).to match(/File/)
  end
end
