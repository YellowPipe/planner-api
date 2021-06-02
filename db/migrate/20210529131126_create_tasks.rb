# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string :description
      t.datetime :deadline
      t.integer :priority, default: 0
      t.boolean :done, default: false

      t.timestamps
    end
  end
end
