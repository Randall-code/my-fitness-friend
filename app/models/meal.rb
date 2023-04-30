# frozen_string_literal: true

class Meal < ApplicationRecord
  belongs_to :meal_report
  has_many :foods

  enum meal_type: { 'Breakfast' => 0, 'Lunch' => 1, 'Dinner' => 2, 'Snack' => 3 }
end
