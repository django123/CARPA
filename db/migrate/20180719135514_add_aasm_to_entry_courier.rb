class AddAasmToEntryCourier < ActiveRecord::Migration[5.2]
  def change
    add_column :entry_couriers, :aasm_state, :string
  end
end
