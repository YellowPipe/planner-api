# frozen_string_literal: true

class Task < ApplicationRecord
  validates :description, :priority, presence: true
  validates :done, inclusion: [true, false]

  enum priority: { A: 0, B: 1, C: 2, D: 3 }
end
