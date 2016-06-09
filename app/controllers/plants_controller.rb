class PlantsController < ApplicationController
  def index
    @plants = Plant.all.sort_by { plant.name.downcase  }
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

  def remove_plant_from_user
    mynewplant = Plant.find(params[:id])
    current_user.plants.destroy(mynewplant)

    redirect_to :back
  end
end
