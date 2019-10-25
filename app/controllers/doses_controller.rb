class DosesController < ApplicationController
  def new
    @dose = Dose.new
    @ingredients = Ingredient.all
    @cocktail = Cocktail.find(params["cocktail_id"])
  end

  def create
    @cocktail = Cocktail.find(params["cocktail_id"])
    @dose = Dose.new(restaurant_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(params["cocktail_id"])
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail_id)
  end

  private

  def restaurant_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end

