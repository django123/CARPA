require 'rails_helper'

RSpec.describe "statut_couriers/edit", type: :view do
  before(:each) do
    @statut_courier = assign(:statut_courier, StatutCourier.create!(
      :statut => "MyString"
    ))
  end

  it "renders the edit statut_courier form" do
    render

    assert_select "form[action=?][method=?]", statut_courier_path(@statut_courier), "post" do

      assert_select "input[name=?]", "statut_courier[statut]"
    end
  end
end
