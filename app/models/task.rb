# frozen_string_literal: true

class Task < ApplicationRecord
  validates :description, :priority, presence: true
  validates_inclusion_of :done, in: [true, false]
end
