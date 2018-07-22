class AddStatutIdToEntryCourier < ActiveRecord::Migration[5.2]
  def change
    add_reference :entry_couriers, :statut, foreign_key: true
  end
end
