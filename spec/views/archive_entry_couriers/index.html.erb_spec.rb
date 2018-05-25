require 'rails_helper'

RSpec.describe "archive_entry_couriers/index", type: :view do
  before(:each) do
    assign(:archive_entry_couriers, [
      ArchiveEntryCourier.create!(
        :user => nil,
        :entry_courier => nil,
        :description => "MyText",
        :name => "Name",
        :reference => "Reference",
        :file => "File"
      ),
      ArchiveEntryCourier.create!(
        :user => nil,
        :entry_courier => nil,
        :description => "MyText",
        :name => "Name",
        :reference => "Reference",
        :file => "File"
      )
    ])
  end

  it "renders a list of archive_entry_couriers" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
