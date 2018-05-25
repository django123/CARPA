class AddAttachmentFileToEntryCouriers < ActiveRecord::Migration[5.2]
  def self.up
    change_table :entry_couriers do |t|
      t.attachment :file
    end
  end

  def self.down
    remove_attachment :entry_couriers, :file
  end
end
