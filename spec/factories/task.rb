# frozen_string_literal: true

FactoryBot.define do
  factory :task do
    description { Faker::Hipster.sentence }
  end
end
