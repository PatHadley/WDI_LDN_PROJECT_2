class UsersController < ApplicationController
  require "plants_controller"
  def show
    id = (params[:id])
    @user = User.find(id)
  end
end