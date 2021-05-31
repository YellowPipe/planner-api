# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { build(:task) }

  it 'is valid with valid attributes' do
    expect(task).to be_valid
  end
  it 'is not valid without a description' do
    task.description = nil

    expect(task).to_not be_valid
  end
end
