# frozen_string_literal: true

class AddGoalReferenceToTask < ActiveRecord::Migration[6.0]
  def change
    add_reference :tasks, :goal, foreign_key: true
  end
end
