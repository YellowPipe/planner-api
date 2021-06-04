# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Goal, type: :model do
  let(:goal) { build(:goal) }

  it 'is valid with valid attributes' do
    expect(goal).to be_valid
  end

  it 'is not valid without a description' do
    goal.description = nil

    expect(goal).to_not be_valid
  end

  it 'destroys dependent tasks' do
    goal.tasks << build(:task)
    goal.save

    expect { goal.destroy }.to change { Task.count }.by(-1)
  end
end
