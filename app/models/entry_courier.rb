class EntryCourier < ApplicationRecord
  include AASM
  aasm do
    state :unverified, initial: true
    state :verified
    state :published
    state :archived
    state :rejected

    # after_all_transactions :log_state_change

    event :verify do
      transitions from: [:unverified], to: :verified
    end

    event :reject do
      transitions from: [:unverified], to: :rejected
    end

    event :reverify do
      transitions from: [:verified], to: :unverified
    end

    event :publish do
      transitions from: [:verified], to: :published
    end

    event :unpublish do
      transitions from: [:published], to: :verified
    end

    event :archive do
      transitions from: [:published, :verified, :unverified], to: :archived
    end
  end



  include RailsAdminCharts
  belongs_to :user
  belongs_to :project
  has_many :archive_entry_couriers

  scope :active_entry_couriers, -> { where(active: true)}
  scope :inactive_entry_couriers, -> { where(active: false)}
  validates_presence_of :reference, :sender
  validates_uniqueness_of :reference
  mount_uploader :file, FileUploader
=begin
  has_attached_file :file, style: { medium: "300x300>", thumb: "100x100"}
  validates_attachment :file,
                        content_type: { content_type: [
                          "image/jpeg", "image/gif", "image/png", "application/pdf"
                          ]}
=end

  #serialize :file, JSON
  #

end
