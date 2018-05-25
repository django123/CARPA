class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :reference
      t.date :duration
      t.string :amount
      t.string :public_partenership
      t.string :private_partenership
      t.string :project_situation
      t.string :focal_point
      t.string :object_project
      t.string :procedure
      t.string :contratDuration
      t.string :projectName
      t.string :secteurActivite
      t.string :projectDescription
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
