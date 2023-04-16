class OriginsController < ApplicationController

  def index
    @origins = Origin.all
    render :index
  end

  def show
    @origin = Origin.find_by(id: params[:id])
    render :show
  end

  def create
    @origin = Origin.new(
      name: name = params[:name]
    )
    @origin.save
    render :show
  end

  def update
    @origin = Origin.find_by(id: params[:id])
    @origin.name = params[:name] || @origin.name

    @origin.save
    render :show
  end

  def destroy
    @origin = Origin.find_by(id: params[:id])
    @origin.destroy
    render json: {message: "origin as been destroyed successfully"}
  end

end
