require 'rails_helper'

RSpec.describe "project_phases/show", type: :view do
  before(:each) do
    @project_phase = assign(:project_phase, ProjectPhase.create!(
      :document => "Document",
      :phase => "Phase",
      :description => "MyText",
      :project => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Document/)
    expect(rendered).to match(/Phase/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
