class GalleysController < ApplicationController

  def index
    @galleys = Galley.all
    render :index
  end

  def show
    @galley = Galley.find_by(id: params[:id])
    render :show
  end

  def create
    @galley = Galley.new(
      crew_id: crew_id = params[:crew_id],
      quantity: quantity = params[:quantity],
      ingredient_id: ingredient_id = params[:ingredient_id]

    )
    @galley.save
    render :show
  end

  def update
    @galley = Galley.find_by(id: params[:id])
    @galley.crew_id = params[:crew_id] || @galley.crew_id
    @galley.quantity = params[:quantity] || @galley.quantity
    @galley.ingredient_id = params[:ingredient_id] || @galley.ingredient_id

    @galley.save
    render :show
  end

  def destroy
    @galley = Galley.find_by(id: params[:id])
    @galley.destroy
    render json: {message: "galley as been destroyed successfully"}
  end

end
