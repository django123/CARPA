class CreateTraceEntrants < ActiveRecord::Migration[5.2]
  def change
    create_table :trace_entrants do |t|
      t.references :entry_courier, foreign_key: true

      t.timestamps
    end
  end
end
