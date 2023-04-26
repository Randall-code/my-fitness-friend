class CreateMeal < ActiveRecord::Migration[7.0]
  def change
    create_table :meals do |t|
      t.integer :meal_type
      t.string :notes
      t.belongs_to :meal_report

      t.timestamps
    end
  end
end
