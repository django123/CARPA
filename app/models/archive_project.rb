class ArchiveProject < ApplicationRecord

  belongs_to :user
  belongs_to :project

  validates_presence_of :name, :reference

  rails_admin do
    label " Archive Projet"
    edit do
      exclude_fields :file_updated_at
      field :user do
        label "Utilisateur"
      end
      field :project do
        label "Projet"
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
      field :project do
        label "Projet"
      end
      field :user do
        label "utilisateur"
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
