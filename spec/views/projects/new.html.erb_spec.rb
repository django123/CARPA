require 'rails_helper'

RSpec.describe "projects/new", type: :view do
  before(:each) do
    assign(:project, Project.new(
      :reference => "MyString",
      :amount => "MyString",
      :public_partenership => "MyString",
      :private_partenership => "MyString",
      :project_situation => "MyString",
      :focal_point => "MyString",
      :object_project => "MyString",
      :procedure => "MyString",
      :contratDuration => "MyString",
      :projectName => "MyString",
      :secteurActivite => "MyString",
      :projectDescription => "MyString",
      :user => nil
    ))
  end

  it "renders new project form" do
    render

    assert_select "form[action=?][method=?]", projects_path, "post" do

      assert_select "input[name=?]", "project[reference]"

      assert_select "input[name=?]", "project[amount]"

      assert_select "input[name=?]", "project[public_partenership]"

      assert_select "input[name=?]", "project[private_partenership]"

      assert_select "input[name=?]", "project[project_situation]"

      assert_select "input[name=?]", "project[focal_point]"

      assert_select "input[name=?]", "project[object_project]"

      assert_select "input[name=?]", "project[procedure]"

      assert_select "input[name=?]", "project[contratDuration]"

      assert_select "input[name=?]", "project[projectName]"

      assert_select "input[name=?]", "project[secteurActivite]"

      assert_select "input[name=?]", "project[projectDescription]"

      assert_select "input[name=?]", "project[user_id]"
    end
  end
end
