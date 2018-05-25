class CreateProjectPhases < ActiveRecord::Migration[5.2]
  def change
    create_table :project_phases do |t|
      t.string :document
      t.string :phase
      t.text :description
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end
