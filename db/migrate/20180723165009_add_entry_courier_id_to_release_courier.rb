class AddEntryCourierIdToReleaseCourier < ActiveRecord::Migration[5.2]
  def change
    add_reference :release_couriers, :entry_id, foreign_key: true
  end
end
