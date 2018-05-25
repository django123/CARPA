require 'rails_helper'

RSpec.describe "release_couriers/new", type: :view do
  before(:each) do
    assign(:release_courier, ReleaseCourier.new(
      :destination => "MyString",
      :reference => "MyString",
      :orderNumber => "MyString",
      :project => nil,
      :user => nil
    ))
  end

  it "renders new release_courier form" do
    render

    assert_select "form[action=?][method=?]", release_couriers_path, "post" do

      assert_select "input[name=?]", "release_courier[destination]"

      assert_select "input[name=?]", "release_courier[reference]"

      assert_select "input[name=?]", "release_courier[orderNumber]"

      assert_select "input[name=?]", "release_courier[project_id]"

      assert_select "input[name=?]", "release_courier[user_id]"
    end
  end
end
