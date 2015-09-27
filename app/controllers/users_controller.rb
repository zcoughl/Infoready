class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def show
  	@user = User.find(params[:id])
    if session[:user_id] != @user.id
        flash[:success] = "You are not authorized to view this page!"
        redirect_to help_path
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
    	flash[:success] = "Welcome to the Infoready MDP App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

  	def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
