class AddAttachmentDocumentToProjectPhases < ActiveRecord::Migration[5.2]
  def self.up
    change_table :project_phases do |t|
      t.attachment :document
    end
  end

  def self.down
    remove_attachment :project_phases, :document
  end
end
