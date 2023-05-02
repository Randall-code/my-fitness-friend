# frozen_string_literal: true

class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new(meal_params)
    if @meal.save
      redirect_to meal_reports_path
    else
      render :new
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:notes, :meal_report_id, :meal_type )
  end
end
