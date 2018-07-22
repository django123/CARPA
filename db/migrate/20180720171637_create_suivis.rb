class CreateSuivis < ActiveRecord::Migration[5.2]
  def change
    create_table :suivis do |t|
      t.references :statut_courier, foreign_key: true
      t.references :entry_courier, foreign_key: true

      t.timestamps
    end
  end
end
