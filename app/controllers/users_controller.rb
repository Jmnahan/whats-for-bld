class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_permission

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(create_user_params)

    if @user.save
      redirect_to users_path
    end
  end

  def show
    @user = User.find params[:id]
  end

  def edit
    @user = User.find params[:id]
  end

  def update
    @user = User.find params[:id]

    if current_user.role = 'admin'
      if @user.update(create_user_params)
        redirect_to users_path
      else
        render :edit
      end
    end
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
    params.require(:user).permit(:email, :password, :confimation_password, :role)
  end

end
