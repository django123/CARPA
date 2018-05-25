require 'rails_helper'

RSpec.describe "projects/show", type: :view do
  before(:each) do
    @project = assign(:project, Project.create!(
      :reference => "Reference",
      :amount => "Amount",
      :public_partenership => "Public Partenership",
      :private_partenership => "Private Partenership",
      :project_situation => "Project Situation",
      :focal_point => "Focal Point",
      :object_project => "Object Project",
      :procedure => "Procedure",
      :contratDuration => "Contrat Duration",
      :projectName => "Project Name",
      :secteurActivite => "Secteur Activite",
      :projectDescription => "Project Description",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Reference/)
    expect(rendered).to match(/Amount/)
    expect(rendered).to match(/Public Partenership/)
    expect(rendered).to match(/Private Partenership/)
    expect(rendered).to match(/Project Situation/)
    expect(rendered).to match(/Focal Point/)
    expect(rendered).to match(/Object Project/)
    expect(rendered).to match(/Procedure/)
    expect(rendered).to match(/Contrat Duration/)
    expect(rendered).to match(/Project Name/)
    expect(rendered).to match(/Secteur Activite/)
    expect(rendered).to match(/Project Description/)
    expect(rendered).to match(//)
  end
end
