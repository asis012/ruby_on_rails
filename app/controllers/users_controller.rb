# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :log_at_first, only: [:index, :edit, :update]
  before_action :current_user_only, only: [:edit, :update]
  before_action :admin_only, only: [:delete]

  def index
    @users = User.paginate(page: params[:page])
   
  end
  def new
    @user = User.new
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Successfully Destroyed !!!"
    redirect_to users_path
  end
  def show
    @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
   
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    if @user.save
      log_in user
      flash[:success] = 'Welcomee to the Sample App!'
      redirect_to @user
    else
      flash[:danger] = 'It failed.'
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      flash[:success] = 'Profile updated'
      redirect_to @user
    else
      redirect_to edit_user_path
      # render 'edit'
    end
  end



  def current_user_only
    @user = User.find(params[:id])

    unless @user == current_user

      redirect_to(root_url) unless @user == current_user
      flash[:danger] = 'Cannot edit others profile'
    end
  end

  private
  def admin_only
    if !current_user.admin
      flash[:danger] = 'Cannot edit others profile'
      redirect_to root_url
    end
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
