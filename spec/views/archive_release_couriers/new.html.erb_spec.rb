require 'rails_helper'

RSpec.describe "archive_release_couriers/new", type: :view do
  before(:each) do
    assign(:archive_release_courier, ArchiveReleaseCourier.new(
      :user => nil,
      :release_courier => nil,
      :description => "MyText",
      :name => "MyString",
      :reference => "MyString",
      :file => "MyString"
    ))
  end

  it "renders new archive_release_courier form" do
    render

    assert_select "form[action=?][method=?]", archive_release_couriers_path, "post" do

      assert_select "input[name=?]", "archive_release_courier[user_id]"

      assert_select "input[name=?]", "archive_release_courier[release_courier_id]"

      assert_select "textarea[name=?]", "archive_release_courier[description]"

      assert_select "input[name=?]", "archive_release_courier[name]"

      assert_select "input[name=?]", "archive_release_courier[reference]"

      assert_select "input[name=?]", "archive_release_courier[file]"
    end
  end
end
