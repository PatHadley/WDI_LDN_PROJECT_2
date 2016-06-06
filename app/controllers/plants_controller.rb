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
      @mynewplant = Plant.find_by(params[:name])
      current_user.plants.push(@mynewplant)
      flash[:notice] = 'You added #{@mynewplant.name}!'
  end
end
