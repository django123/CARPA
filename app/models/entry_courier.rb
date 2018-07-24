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

=begin
    configure :duration, :date do
      date_format :default
    end
=end
    edit do
      exclude_fields :statut, :aasm_state, :heure,
                     :statut, :trace_entrants, :file_updated_at

    end
  end
  #has_many :release_couriers
  scope :active_entry_couriers, -> { where(active: true)}
  scope :inactive_entry_couriers, -> { where(active: false)}
  validates_presence_of :reference, :sender, :division
  validates_uniqueness_of :reference

  mount_uploader :file, FileUploader


end
