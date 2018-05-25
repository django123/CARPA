class ReleaseCourier < ApplicationRecord
  belongs_to :project
  belongs_to :user
  has_many :archive_release_couriers
  validates_presence_of :destination, :date
end
