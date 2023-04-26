# frozen_string_literal: true

class CreateFood < ActiveRecord::Migration[7.0]
  def change
    create_table :foods do |t|
      t.integer :calories
      t.string :name
      t.belongs_to :meal

      t.timestamps
    end
  end
end
