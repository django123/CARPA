class User < ApplicationRecord
  rolify :before_add => :before_add_method

  include RailsAdminCharts
  scope :active_users, -> { where(active: true)}
  scope :inactive_users, -> { where(active: false)}
  extend Enumerize
  enumerize :kind,in: [:President, :CST, :ET1, :ET2, :EJ1, :EJ2,:Assistante_PR,:Assistante_CST ]

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         validates_presence_of :lName, :email, :adress, :phone,
                       :registration_number, :kind
       validates_uniqueness_of :phone, :registration_number,:kind

       has_many :entry_couriers
       has_many :release_couriers
       has_many :archive_release_couriers
       has_many :projects
       has_many :archive_projects
       has_many :archive_entry_couriers

  def before_add_method(role)
    # do something before it gets added
  end

end
