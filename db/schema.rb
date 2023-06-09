# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 20_230_430_144_350) do
  create_table 'foods', force: :cascade do |t|
    t.integer 'calories'
    t.string 'name'
    t.integer 'meal_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['meal_id'], name: 'index_foods_on_meal_id'
  end

  create_table 'meal_reports', force: :cascade do |t|
    t.date 'report_date'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'notes'
  end

  create_table 'meals', force: :cascade do |t|
    t.integer 'meal_type'
    t.string 'notes'
    t.integer 'meal_report_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['meal_report_id'], name: 'index_meals_on_meal_report_id'
  end
end
