class UsersController < ApplicationController
  require "plants_controller"
  before_action :authenticate_user!

  def index
    @users = User.all
  end

  def profile
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = current_user    
  end

  def change_available
    @user = current_user
    if @user.available == true
      @user.update_attribute(:available, false)
    else
      @user.update_attribute(:available, true)
    end
    @user.save
    redirect_to :back
  end

  def gd_mail
    UserMailer.gd_mail
  end
end
