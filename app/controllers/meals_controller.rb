class MealsController < ApplicationController
  before_action :set_meal, only: %i[show edit update destroy]
  def index
    @meals = Meal.all
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.save
    redirect meals_path
  end

  def update
    @meal.update(meal_params)
    redirect_to meals_path
  end

  def destroy
    @meal.destroy
    redirect_to meals_path
  end

  def set_meal
    @meal = Meal.find(params[:id])
  end

  private

  def meal_params
    params.require(:meal).permit(:name, :price)
  end
end
