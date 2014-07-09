class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:user_id, :first_name, :last_name, :password, :password_confirmation, :address, :zipcode, :city, :phone, :email, :area, :default_provider) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:user_id, :first_name, :last_name, :password_confirmation, :address, :zipcode, :city, :phone, :email, :area, :default_provider, :password) }
  end



end



