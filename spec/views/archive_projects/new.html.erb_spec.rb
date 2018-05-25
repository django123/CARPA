require 'rails_helper'

RSpec.describe "archive_projects/new", type: :view do
  before(:each) do
    assign(:archive_project, ArchiveProject.new(
      :user => nil,
      :project => nil,
      :description => "MyText",
      :name => "MyString",
      :reference => "MyString",
      :file => "MyString"
    ))
  end

  it "renders new archive_project form" do
    render

    assert_select "form[action=?][method=?]", archive_projects_path, "post" do

      assert_select "input[name=?]", "archive_project[user_id]"

      assert_select "input[name=?]", "archive_project[project_id]"

      assert_select "textarea[name=?]", "archive_project[description]"

      assert_select "input[name=?]", "archive_project[name]"

      assert_select "input[name=?]", "archive_project[reference]"

      assert_select "input[name=?]", "archive_project[file]"
    end
  end
end
