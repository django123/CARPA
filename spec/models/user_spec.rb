require 'rails_helper'

RSpec.describe User, type: :model do
 context 'validation tests ' do
    it "name should exist" do
      user = User.new(lName: 'edouga', kind: :CST).save
      expect(user).to eq(false)
    end

   it " ensure email presence " do
     user = User.new(email: 'edougajean@gmail.com', kind: :CST).save
     expect(user).to eq(false)
   end

   it " ensure phone presence" do
     user = User.new(phone: '676344842', kind: :CST).save
     expect(user).to eq(false)
   end

   it "ensure adress presence" do
     user = User.new(adress: 'Bastos', kind: :CST).save
     expect(user).to eq(false)
   end

 it "ensure registration number presence" do
   user = User.new(registration_number: '13Z241S', kind: :CST).save
   expect(user).to eq(false)
 end

 it "ensure kind presence" do
   user = User.new(lName: 'edouga', email: 'edougajean@gmail.com',
                   phone: '676344842', registration_number: '13Z241S', adress: 'Bastos').save
   expect(user).to eq(false)
 end

   it "should save successfully" do
     user = User.new(lName: 'edouga', email: 'edougajean@gmail.com',
                     phone: '676344842', registration_number: '13Z241S', adress: 'Bastos', kind: :CST).save
     expect(user).to eq(false)
   end
 end

  context 'scope tests' do
    let (:params) {{lName: 'edouga', email: 'edougajean@gmail.com',
                    phone: '676344842', registration_number: '13Z241S', adress: 'Bastos', kind: :CST}}
    before(:each) do
      User.new(params).save
      User.new(params).save
      User.new(params.merge(active: true)).save
      User.new(params.merge(active: false)).save
      User.new(params.merge(active: false)).save
    end
    it "should  return active users" do
        expect(User.active_users.size).to eq(3)
    end

    it "should  return inactive users" do
      expect(User.inactive_users.size).to eq(2)
    end
  end
end
