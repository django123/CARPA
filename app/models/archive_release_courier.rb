class ArchiveReleaseCourier < ApplicationRecord


  belongs_to :user
  belongs_to :release_courier


  scope :active_a_r_couriers, -> { where(active: true)}
  scope :inactive_a__couriers, -> { where(active: false)}
  validates_presence_of :name, :reference

  rails_admin do
    label "Archive courrier sortant"
    edit do
      exclude_fields :file_updated_at
      field :user do
        label "Utilisateur"
      end
      field :release_courier do
        label "Courrier sortant"
      end
    end
    show do
      field :description do
        label "Description"
      end
      field :reference do
        label "Réference"
      end
      field :name do
        label "Nom de l'archive"
      end
      field :release_courier do
        label "Courrier sortant"
      end
      field :user do
        label "Utilisateur"
      end
      field :file do
        label "Fichier"
      end
    end
  end

  mount_uploader :file, FileUploader
=begin
  has_attached_file :file, style: { medium: "300x300>", thumb: "100x100"}
  validates_attachment :file,
                        content_type: { content_type: [
                          "image/jpeg", "image/gif", "image/png", "application/pdf"
                          ]}
=end

  #serialize :file, JSON
end
