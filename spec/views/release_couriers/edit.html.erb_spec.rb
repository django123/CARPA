require 'rails_helper'

RSpec.describe "release_couriers/edit", type: :view do
  before(:each) do
    @release_courier = assign(:release_courier, ReleaseCourier.create!(
      :destination => "MyString",
      :reference => "MyString",
      :orderNumber => "MyString",
      :project => nil,
      :user => nil
    ))
  end

  it "renders the edit release_courier form" do
    render

    assert_select "form[action=?][method=?]", release_courier_path(@release_courier), "post" do

      assert_select "input[name=?]", "release_courier[destination]"

      assert_select "input[name=?]", "release_courier[reference]"

      assert_select "input[name=?]", "release_courier[orderNumber]"

      assert_select "input[name=?]", "release_courier[project_id]"

      assert_select "input[name=?]", "release_courier[user_id]"
    end
  end
end
