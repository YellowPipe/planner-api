# frozen_string_literal: true

class Task < ApplicationRecord
  validates :description, :priority, presence: true
  validates :done, inclusion: [true, false]
end
