require 'rails_helper'

RSpec.describe "archive_projects/show", type: :view do
  before(:each) do
    @archive_project = assign(:archive_project, ArchiveProject.create!(
      :user => nil,
      :project => nil,
      :description => "MyText",
      :name => "Name",
      :reference => "Reference",
      :file => "File"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Reference/)
    expect(rendered).to match(/File/)
  end
end
