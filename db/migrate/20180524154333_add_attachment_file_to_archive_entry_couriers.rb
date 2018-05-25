class AddAttachmentFileToArchiveEntryCouriers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :archive_entry_couriers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :archive_entry_couriers, :file
  end
end
