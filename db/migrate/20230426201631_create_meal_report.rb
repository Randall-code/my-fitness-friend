# frozen_string_literal: true

class CreateMealReport < ActiveRecord::Migration[7.0]
  def change
    create_table :meal_reports do |t|
      t.date :report_date

      t.timestamps
    end
  end
end
