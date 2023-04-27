# frozen_string_literal: true

class MealReportsController < ApplicationController
  def index
    @meal_reports = MealReport.all
  end
end
