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
end
