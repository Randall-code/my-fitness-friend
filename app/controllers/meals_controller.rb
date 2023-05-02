# frozen_string_literal: true

class MealsController < ApplicationController
  def new
    @meal = Meal.new
  end
end
