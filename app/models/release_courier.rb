class ReleaseCourier < ApplicationRecord
  #extend FriendlyId
   include RailsAdminCharts
  belongs_to :project
  belongs_to :user
  has_many :archive_release_couriers

  scope :active_release_couriers, -> { where(active: true)}
  scope :inactive_release_couriers, -> { where(active: false)}
  validates_presence_of :destination, :date

  mount_uploader :file, FileUploader
end
