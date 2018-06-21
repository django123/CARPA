class ArchiveEntryCourier < ApplicationRecord
  #extend FriendlyId
  include RailsAdminCharts
  belongs_to :user
  belongs_to :entry_courier
  validates_presence_of :name, :reference

  mount_uploader :file, FileUploader
  has_attached_file :file, style: { medium: "300x300>", thumb: "100x100"}
  validates_attachment :file,
                        content_type: { content_type: [
                          "image/jpeg", "image/gif", "image/png", "application/pdf"
                          ]}
  #serialize :file, JSON
end
