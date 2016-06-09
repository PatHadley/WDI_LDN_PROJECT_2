class PlantsController < ApplicationController
 
  def index
    @q = Plant.ransack(params[:q])
    @plants = @q.result(distinct: true)
  end

  def show
    @plant = Plant.find(params[:id])
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
