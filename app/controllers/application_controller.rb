class ApplicationController < ActionController::Base

  rescue_from CanCan::AccessDenied do |exception|
    flash[:error] = "Accés refusé."
    redirect_to root_url
  end
end
