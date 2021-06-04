# frozen_string_literal: true

class Goal < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :description, presence: true
end
