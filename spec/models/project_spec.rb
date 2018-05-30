require 'rails_helper'

RSpec.describe Project, type: :model do
  context 'validation tests' do
    it "ensure object project presence" do
      project = Project.new( object_project: 'Test', reference: 'Test test').save
      expect(project).to eq(false)
    end

    it "ensure user presence" do
      project = Project.new( user_id: 'Edouga', reference: 'Test test').save
      expect(project).to eq(false)
    end

    it "ensure public partenership presence" do
      project = Project.new( public_partenership: 'Edouga', reference: 'Test test').save
      expect(project).to eq(false)
    end

    it " ensure private partenership presence" do
      project = Project.new( private_partenership: 'Edouga', reference: 'Test test').save
      expect(project).to eq(false)
    end

    it " ensure amount presence" do
      project = Project.new( amount: 'Edouga', reference: 'Test test').save
      expect(project).to eq(false)
    end

    it " should save successfully" do
      project = Project.new( user_id: 'Edouga', reference: 'Test test',
                             amount: 'Edouga', private_partenership: 'Edouga',
                             public_partenership: 'Edouga',object_project: 'Test').save
      expect(project).to eq(false)
    end

  end

  context 'scope tests' do
    let(:params) {{ user_id: 'Edouga', reference: 'Test test',
                    amount: 'Edouga', private_partenership: 'Edouga',
                    public_partenership: 'Edouga',object_project: 'Test'}}

    before(:each) do
      Project.new(params).save
      Project.new(params).save
      Project.new(params.merge(active: true)).save
      Project.new(params.merge(active: false)).save
      Project.new(params.merge(active: false)).save

    end

    it "should  return active active projects" do
      expect(Project.active_projects.size).to eq(2)
    end

    it "should  return inactive inactive projects" do
      expect(Project.inactive_projects.size).to eq(3)
    end
  end
end
