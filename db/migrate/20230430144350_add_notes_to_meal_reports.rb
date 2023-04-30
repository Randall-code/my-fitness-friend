class AddNotesToMealReports < ActiveRecord::Migration[7.0]
  def change
    add_column :meal_reports, :notes, :string
  end
end
