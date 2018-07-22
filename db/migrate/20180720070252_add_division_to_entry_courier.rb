class AddDivisionToEntryCourier < ActiveRecord::Migration[5.2]
  def change
    add_column :entry_couriers, :division, :string
  end
end
