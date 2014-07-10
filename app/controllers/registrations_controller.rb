class RegistrationsController < Devise::RegistrationsController

  private


  def sign_up_params
    allow = [:user_id, :first_name, :last_name, :email, :password, :password_confirmation, :address, :zipcode, :city, :phone, :email, :area, :default_provider_id, :role]
    params.require(:user).permit(allow)
  end

  def account_update_params
    allow = [:current_password, :user_id, :first_name, :last_name, :email, :password, :password_confirmation, :address, :zipcode, :city, :phone, :email, :area, :default_provider_id, :role]
    params.require(:user).permit(allow) 
  end
end