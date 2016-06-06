class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    id = params[:id]
    @plant = Plant.find(id)
  end

  def edit
  end

  def add_plant_to_user
    mynewplant = Plant.find(params[:id])
    current_user.plants.push(mynewplant)

    redirect_to :back
  end
end
