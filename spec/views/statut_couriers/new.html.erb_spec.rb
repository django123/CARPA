require 'rails_helper'

RSpec.describe "statut_couriers/new", type: :view do
  before(:each) do
    assign(:statut_courier, StatutCourier.new(
      :statut => "MyString"
    ))
  end

  it "renders new statut_courier form" do
    render

    assert_select "form[action=?][method=?]", statut_couriers_path, "post" do

      assert_select "input[name=?]", "statut_courier[statut]"
    end
  end
end
