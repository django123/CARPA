class AddRegistrationNumberToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :registration_number, :string
  end
end
