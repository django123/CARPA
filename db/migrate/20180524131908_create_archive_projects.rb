class CreateArchiveProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :archive_projects do |t|
      t.references :user, foreign_key: true
      t.references :project, foreign_key: true
      t.text :description
      t.string :name
      t.string :reference
      t.string :file

      t.timestamps
    end
  end
end
