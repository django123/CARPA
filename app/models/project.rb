class Project < ApplicationRecord

  extend Enumerize
  enumerize :procedure, in:[:Concurrence, :Dispense]
  belongs_to :user
  has_many :entry_couriers
  has_many :project_phases
  has_many :archive_projects


  scope :active_projects, -> { where(active: true)}
  scope :inactive_projects, -> { where(active: false)}
  validates_presence_of :reference, :object_project,
                        :public_partenership, :private_partenership,
                        :amount
  validates_uniqueness_of :reference, :object_project

  #friendly_id :reference, use:  :slugged

    #def should_generate_new_friendly_id?
      #reference_changed? || super
    #end



end
