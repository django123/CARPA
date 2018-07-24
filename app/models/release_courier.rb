class ReleaseCourier < ApplicationRecord

  belongs_to :project
  belongs_to :user
  #belongs_to :entry_courier
  has_many :archive_release_couriers
  rails_admin do
    edit do
      exclude_fields :entry_id_id

    end
  end

  scope :active_release_couriers, -> { where(active: true)}
  scope :inactive_release_couriers, -> { where(active: false)}
  validates_presence_of :destination

  mount_uploader :file, FileUploader
end
