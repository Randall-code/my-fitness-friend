# frozen_string_literal: true

class MealReportsController < ApplicationController
  def index
    # Scope your query to the dates being shown:
    start_date = params.fetch(:start_date, Date.today).to_date
    @meal_reports = MealReport.where(report_date: start_date.beginning_of_week..start_date.end_of_week)

    # @meal_reports = MealReport.all
  end
end
