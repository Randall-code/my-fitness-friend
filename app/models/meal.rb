# frozen_string_literal: true

class Meal < ApplicationRecord
  belongs_to :meal_report
  has_many :foods
end
