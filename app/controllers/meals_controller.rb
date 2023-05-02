# frozen_string_literal: true

class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end

  def create
    meal_report = MealReport.find_or_create_by(meal_report_params)
    @meal = Meal.new(meal_params.merge({meal_report_id: meal_report&.id}))
    if @meal.save
      redirect_to meal_reports_path
    else
      render :new
    end
  end

  private

  def meal_params
    params.require(:meal).permit(:notes, :meal_type)
  end

  def meal_report_params
    params.require(:meal).permit(:report_date)
  end
end
