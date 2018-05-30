require 'rails_helper'

RSpec.describe ReleaseCourier, type: :model do

  context 'validation tests' do
    it "ensure destination presence" do
       r_courier = ReleaseCourier.new( destination: 'CARPA', date: '12-06-2016').save
       expect(r_courier).to eq(false)
    end

    it "ensure user presence" do
        r_courier = ReleaseCourier.new( date: '12-06-2016', user_id: 'Edouga').save
        expect(r_courier).to eq(false)
    end

    it "ensure project presence" do
      r_courier = ReleaseCourier.new( date: '12-06-2016', project_id: 'test').save
      expect(r_courier).to eq(false)
    end

    it " ensure date presence" do
      r_courier = ReleaseCourier.new( destination: 'CARPA',user_id: 'Edouga',project_id: 'test').save
      expect(r_courier).to eq(false)
    end
    it " should save successfully" do
      r_courier = ReleaseCourier.new( destination: 'CARPA', date: '12-06-2016',project_id: 'test',user_id: 'Edouga').save
      expect(r_courier).to eq(false)
    end

  end

  context 'scope tests' do
    let(:params) {{ destination: 'CARPA', date: '12-06-2016',project_id: 'test',user_id: 'Edouga'}}

    before(:each) do
        ReleaseCourier.new(params).save
        ReleaseCourier.new(params).save
        ReleaseCourier.new(params.merge(active: true)).save
        ReleaseCourier.new(params.merge(active: false)).save
        ReleaseCourier.new(params.merge(active: false)).save

    end

    it "should  return active release_couriers" do
      expect( ReleaseCourier.active_release_couriers.size).to eq(2)
    end

    it "should  return inactive release_couriers" do
      expect( ReleaseCourier.inactive_release_couriers.size).to eq(3)
    end
  end



end
