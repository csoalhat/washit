class UsersController < Devise::RegistrationsController

  def index
    @users = User.all
  end

  def create
    # run default version defined in Devise::RegistrationsController
    super

    # then add our custom logic
    @user.role = "customer"
    @user.save
  end

  def show
    @user = if params[:user_id]
      User.where("provider_id= ?", current_user.id)
    elsif current_user
      current_user
    else
      authenticate_user!
    end
  end

  def dashboard
    @user = if params[:user_id]
      User.where("provider_id= ?", current_user.id)
    else
      authenticate_user!
  end
  end


  # def edit
  #   @user = current_user
  # end

  # def update
  #   @user = current_user.new(user_params)
  #   respond_to do |format|
  #     if @user.update(user_params)
  #       format.html { redirect_to home_index_path, notice: 'Client was successfully updated.' }
  #       format.json { head :no_content }
  #     else
  #       format.html { render action: 'edit' }
  #       format.json { render json: @user.errors, status: :unprocessable_entity }
  #     end
  #   end
  # end


private

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:users) do |u|
      u.permit(:name, :email, :image, :password, :password_confirmation, :uid, :provider)
    end
  end

  def client_params
    params.require(:user).permit(:user_id, :password, :first_name, :last_name, :address, :zipcode, :city, :phone, :email, :area, :default_provider_id)
  end

protected

  # def after_sign_up_path_for(resource)
  #   new_client_path
  # end

end