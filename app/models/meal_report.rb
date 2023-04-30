# frozen_string_literal: true

class MealReport < ApplicationRecord
  has_many :meals

  validates :report_date, uniqueness: true

  def start_time
    report_date
  end
end
