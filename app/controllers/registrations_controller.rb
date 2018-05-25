class RegistrationsController < Devise::RegistrationsController
  private

  def sign_up_params
    params.require(:user).permit(:fName, :lName,:adress,:phone,:registration_number, :kind, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:fName, :lName,:adress,:phone,:registration_number, :kind, :email, :password, :password_confirmation, :current_password)
  end
end
