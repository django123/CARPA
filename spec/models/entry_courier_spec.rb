require 'rails_helper'

RSpec.describe EntryCourier, type: :model do
  context 'validation tests' do
    it "ensure sender presence" do
      e_courier = EntryCourier.new( sender: 'CARPA',  reference: 'TEST' ).save
      expect(e_courier).to eq(false)
    end


    it "ensure project presence" do
      e_courier = EntryCourier.new( project_id: 'CARPA1',  reference: 'TEST' ).save
      expect(e_courier).to eq(false)
    end

    it " ensure user presence" do
      e_courier = EntryCourier.new( user_id: 'PPP',  reference: 'TEST' ).save
      expect(e_courier).to eq(false)
    end

    it " ensure reference presence" do
      e_courier = EntryCourier.new( user_id: 'PPP',project_id: 'CARPA1',sender: 'CARPA').save
      expect(e_courier).to eq(false)
    end

    it " should save successfully" do
      e_courier = EntryCourier.new( user_id: 'PPP',project_id: 'CARPA1',sender: 'CARPA' ).save
      expect(e_courier).to eq(false)
    end

  end

  context 'scope tests' do
    let(:params) {{ user_id: 'PPP',project_id: 'CARPA1',sender: 'CARPA',  reference: 'TEST' }}

    before(:each) do
      EntryCourier.new(params).save
      EntryCourier.new(params).save
      EntryCourier.new(params.merge(active: true)).save
      EntryCourier.new(params.merge(active: false)).save
      EntryCourier.new(params.merge(active: false)).save

    end

    it "should  return active entry couriers" do
      expect(User.active_entry_couriers.size).to eq(2)
    end

    it "should  return inactive entry couriers" do
      expect(EntryCourier.inactive_entry_couriers.size).to eq(3)
    end
  end
end
