# frozen_string_literal: true

class MealReport < ApplicationRecord
  has_many :meals

  def start_time
    report_date
  end
end
