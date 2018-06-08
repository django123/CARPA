class User < ApplicationRecord
  #include MailForm::Delivery
  extend FriendlyId
  include RailsAdminCharts
  scope :active_users, -> { where(active: true)}
  scope :inactive_users, -> { where(active: false)}
  extend Enumerize
  enumerize :kind,in: [:President, :CST, :ET1, :ET2, :EJ1, :EJ2,:Assistante_PR,:Assistante_CST ]

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
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

  after_create :welcome_send
  def welcome_send
    WelcomeMailer.welcome_send(self).deliver
    #redirect_to root_path, alert: "Merci pour votre connexion sur l'application"

  end
=begin
  def headers
    {
        :subject => "My Contact Form",
        :to => "your.email@your.domain.com"
    }
  end
=end

end
