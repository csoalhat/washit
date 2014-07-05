class UsersController < Devise::RegistrationsController

  def index
    @users = User.all
  end

  def create
    # run default version defined in Devise::RegistrationsController
    super

    # then add our custom logic
    @user.role = "user"
    @user.save
  end

private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:users) do |u|
      u.permit(:name, :email, :image, :password, :password_confirmation, :uid, :provider)
    end
  end

protected

  def after_sign_up_path_for(resource)
    user_path
  end

end