class EntryCourier < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_many :archive_entry_couriers
  validates_presence_of :reference, :sender
  validates_uniqueness_of :reference
  mount_uploader :file, FileUploader
  #has_attached_file :file, style: { medium: "300x300>", thumb: "100x100"}
  #validates_attachment :file,
                        #content_type: { content_type: [
                         # "image/jpeg", "image/gif", "image/png", "application/pdf"
                          #]}

  serialize :file, JSON
end
