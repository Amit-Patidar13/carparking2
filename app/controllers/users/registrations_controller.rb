class Users::RegistrationsController < Devise::RegistrationsController

  protected

  # def after_sign_up_path_for(_resource)
  #   new_user_session_path
  # end

  private

  def sign_up_params
    params.require(:user).permit(:name, :address, :contact_no, :vehicle_no, :email, :password, :password_confirmation)
  end
end
