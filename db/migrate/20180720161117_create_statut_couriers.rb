class CreateStatutCouriers < ActiveRecord::Migration[5.2]
  def change
    create_table :statut_couriers do |t|
      t.string :statut

      t.timestamps
    end
  end
end
