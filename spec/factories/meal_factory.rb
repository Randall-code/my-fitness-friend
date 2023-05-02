# frozen_string_literal: true

FactoryBot.define do
  factory :meal do
    meal_type { Meal.meal_types.keys.sample }
    notes { Faker::Food.description }
    meal_report
  end
end
