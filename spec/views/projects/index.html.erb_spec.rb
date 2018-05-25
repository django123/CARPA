require 'rails_helper'

RSpec.describe "projects/index", type: :view do
  before(:each) do
    assign(:projects, [
      Project.create!(
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
      ),
      Project.create!(
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
      )
    ])
  end

  it "renders a list of projects" do
    render
    assert_select "tr>td", :text => "Reference".to_s, :count => 2
    assert_select "tr>td", :text => "Amount".to_s, :count => 2
    assert_select "tr>td", :text => "Public Partenership".to_s, :count => 2
    assert_select "tr>td", :text => "Private Partenership".to_s, :count => 2
    assert_select "tr>td", :text => "Project Situation".to_s, :count => 2
    assert_select "tr>td", :text => "Focal Point".to_s, :count => 2
    assert_select "tr>td", :text => "Object Project".to_s, :count => 2
    assert_select "tr>td", :text => "Procedure".to_s, :count => 2
    assert_select "tr>td", :text => "Contrat Duration".to_s, :count => 2
    assert_select "tr>td", :text => "Project Name".to_s, :count => 2
    assert_select "tr>td", :text => "Secteur Activite".to_s, :count => 2
    assert_select "tr>td", :text => "Project Description".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
