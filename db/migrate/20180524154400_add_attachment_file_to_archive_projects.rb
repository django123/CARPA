class AddAttachmentFileToArchiveProjects < ActiveRecord::Migration[5.2]
  def self.up
    change_table :archive_projects do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :archive_projects, :file
  end
end
