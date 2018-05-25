require 'rails_helper'

RSpec.describe "archive_entry_couriers/edit", type: :view do
  before(:each) do
    @archive_entry_courier = assign(:archive_entry_courier, ArchiveEntryCourier.create!(
      :user => nil,
      :entry_courier => nil,
      :description => "MyText",
      :name => "MyString",
      :reference => "MyString",
      :file => "MyString"
    ))
  end

  it "renders the edit archive_entry_courier form" do
    render

    assert_select "form[action=?][method=?]", archive_entry_courier_path(@archive_entry_courier), "post" do

      assert_select "input[name=?]", "archive_entry_courier[user_id]"

      assert_select "input[name=?]", "archive_entry_courier[entry_courier_id]"

      assert_select "textarea[name=?]", "archive_entry_courier[description]"

      assert_select "input[name=?]", "archive_entry_courier[name]"

      assert_select "input[name=?]", "archive_entry_courier[reference]"

      assert_select "input[name=?]", "archive_entry_courier[file]"
    end
  end
end
