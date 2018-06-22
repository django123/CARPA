class ArchiveReleaseCourier < ApplicationRecord


  belongs_to :user
  belongs_to :release_courier


  scope :active_a_r_couriers, -> { where(active: true)}
  scope :inactive_a__couriers, -> { where(active: false)}
  validates_presence_of :name, :reference

  mount_uploader :file, FileUploader
  #has_attached_file :file, style: { medium: "300x300>", thumb: "100x100"}
  #validates_attachment :file,
                        #content_type: { content_type: [
                          #"image/jpeg", "image/gif", "image/png", "application/pdf"
                          #]}

  #serialize :file, JSON
end
