class RemoveAssmStateToEntryCourier < ActiveRecord::Migration[5.2]
  def change
    remove_column :entry_couriers, :aasm_state, :string
  end
end
