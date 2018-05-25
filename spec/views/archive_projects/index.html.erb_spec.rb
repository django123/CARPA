require 'rails_helper'

RSpec.describe "archive_projects/index", type: :view do
  before(:each) do
    assign(:archive_projects, [
      ArchiveProject.create!(
        :user => nil,
        :project => nil,
        :description => "MyText",
        :name => "Name",
        :reference => "Reference",
        :file => "File"
      ),
      ArchiveProject.create!(
        :user => nil,
        :project => nil,
        :description => "MyText",
        :name => "Name",
        :reference => "Reference",
        :file => "File"
      )
    ])
  end

  it "renders a list of archive_projects" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
  end
end
