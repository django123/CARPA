class CreateEntryCouriers < ActiveRecord::Migration[5.2]
  def change
    create_table :entry_couriers do |t|
      t.string :reference
      t.text :subject
      t.string :sender
      t.string :receveir
      t.date :duration
      t.date :sentDate
      t.string :orderNumber
      t.string :file
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
