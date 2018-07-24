class CreateTraceSortantes < ActiveRecord::Migration[5.2]
  def change
    create_table :trace_sortantes do |t|
      t.references :release_courier, foreign_key: true

      t.timestamps
    end
  end
end
