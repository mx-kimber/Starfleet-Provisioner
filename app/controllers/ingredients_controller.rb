class IngredientsController < ApplicationController

  def index
    @ingredients = Ingredient.all
    render :index
  end

  def show
    @ingredient = Ingredient.find_by(id: params[:id])
    render :show
  end

  def create
    @ingredient = Ingredient.new(
      name: name = params[:name],
      description: description = params[:description],
      origin_id: origin_id = params[:origin_id],
      category_id: category_id = params[:category_id]

    )
    @ingredient.save
    render :show
  end

  def update
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.name = params[:name] || @ingredient.name
    @ingredient.description = params[:description] || @ingredient.description
    @ingredient.origin_id = params[:origin_id] || @ingredient.origin_id
    @ingredient.category_id = params[:category_id] || @ingredient.category_id

    @ingredient.save
    render :show
  end

  def destroy
    @ingredient = Ingredient.find_by(id: params[:id])
    @ingredient.destroy
    render json: {message: "ingredient as been destroyed successfully"}
  end

end
