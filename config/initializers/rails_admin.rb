RailsAdmin.config do |config|
=begin
  require Rails.root.join('lib', 'rails_admin', 'rails_admin_pdf.rb')
  RailsAdmin::Config::Actions.register(RailsAdmin::Config::Actions::Pdf)
=end
  #include RailsAdminDynamicCharts::Datetime
  ### Popular gems integration

  config.main_app_name = ["CARPA", "Administration"]

  # or something more dynamic
  #config.main_app_name = Proc.new { |controller| [ "CARPA", "Administration- #{controller.params[:action].try(:titleize)}" ] }

  ### Popular gems integration

  ## == Devise ==
   config.authenticate_with do
    warden.authenticate! scope: :user

   end
   config.current_user_method(&:current_user)


  ## == Cancan ==
   config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true
  #

  #my models
config.model ActiveModel do
  list do
    field :assos_field do
      pretty_value do
        bindings[:object].assos_field.user_id
      end
    end
    include_all_fields
  end
end


  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    all # NB: comment out this line for RailsAdmin < 0.6.0
    charts
    #all # NB: comment out this line for RailsAdmin < 0.6.0
    #charts

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
