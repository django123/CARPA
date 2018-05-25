require 'rails_helper'

RSpec.describe "entry_couriers/new", type: :view do
  before(:each) do
    assign(:entry_courier, EntryCourier.new(
      :reference => "MyString",
      :subject => "MyText",
      :sender => "MyString",
      :receveir => "MyString",
      :orderNumber => "MyString",
      :file => "MyString",
      :user => nil,
      :project => nil
    ))
  end

  it "renders new entry_courier form" do
    render

    assert_select "form[action=?][method=?]", entry_couriers_path, "post" do

      assert_select "input[name=?]", "entry_courier[reference]"

      assert_select "textarea[name=?]", "entry_courier[subject]"

      assert_select "input[name=?]", "entry_courier[sender]"

      assert_select "input[name=?]", "entry_courier[receveir]"

      assert_select "input[name=?]", "entry_courier[orderNumber]"

      assert_select "input[name=?]", "entry_courier[file]"

      assert_select "input[name=?]", "entry_courier[user_id]"

      assert_select "input[name=?]", "entry_courier[project_id]"
    end
  end
end
