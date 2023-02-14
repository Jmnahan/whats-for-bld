class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_permission

  def index
    @users = User.where.not(role: 'admin')
  end

  def show
    @user = User.find params[:id]
  end

  def destroy
    @user = User.find params[:id]
    @user.destroy!
    redirect_to root_path
  end

  def admin_permission
    return if current_user.admin?
    redirect_to root_path
  end

  private
  
  def create_user_params
    params.require(:user).permit(:email, :username, :password, :confimation_password, :role)
  end

end
