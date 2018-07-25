class EntryCourier < ApplicationRecord


=begin
 before_save do
   self.statut.gsub!(/[\[\]\"]/, "") if attribute_present?("statut")

 end
=end

  extend Enumerize
    enumerize :division, in: [ :Sécretariat_du_Président, :Sécretariat_du_Coordonateur_Technique]

  include RailsAdminCharts
  belongs_to :user
  belongs_to :project
  has_many :archive_entry_couriers
  has_many :suivis
  has_many :statut_couriers, :through => :suivis, :source => :statut_courier
  has_many :trace_entrants
  rails_admin do
    label "courrier entrant"
    edit do
      exclude_fields :statut, :aasm_state, :heure,
                     :statut, :trace_entrants, :file_updated_at
      field :project do
        label "Projet"
      end
      field :user do
        label "Utilisateur"
      end

      field :archive_entry_couriers do
        label "Archive courrier entrant "
      end

      field :suivis do
        label "Suivi"
      end

      field :statut_couriers do
        label "Statut Courrier"
      end
    end
    show do
      field :reference do
        label "Référence"
      end
      field :subject do
        label "Objet"
      end
      field :sender do
        label "Expéditeur"
      end
      field :receveir do
        label "Recepteur"
      end
      field :duration do
        label "Date de reception"
      end
      field :sentDate do
        label "Date d'envoi"
      end
      field :orderNumber do
        label "Numero d'ordre"
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
  #has_many :release_couriers
  scope :active_entry_couriers, -> { where(active: true)}
  scope :inactive_entry_couriers, -> { where(active: false)}
  validates_presence_of :reference, :sender, :division
  validates_uniqueness_of :reference

  mount_uploader :file, FileUploader


end
