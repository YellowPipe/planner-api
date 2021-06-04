# frozen_string_literal: true

class CreateGoals < ActiveRecord::Migration[6.0]
  def change
    create_table :goals do |t|
      t.date :deadline
      t.string :description
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
