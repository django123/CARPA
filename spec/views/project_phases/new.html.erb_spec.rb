require 'rails_helper'

RSpec.describe "project_phases/new", type: :view do
  before(:each) do
    assign(:project_phase, ProjectPhase.new(
      :document => "MyString",
      :phase => "MyString",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders new project_phase form" do
    render

    assert_select "form[action=?][method=?]", project_phases_path, "post" do

      assert_select "input[name=?]", "project_phase[document]"

      assert_select "input[name=?]", "project_phase[phase]"

      assert_select "textarea[name=?]", "project_phase[description]"

      assert_select "input[name=?]", "project_phase[project_id]"
    end
  end
end
