# frozen_string_literal: true

class MealReport < ApplicationRecord
  has_many :meals
end