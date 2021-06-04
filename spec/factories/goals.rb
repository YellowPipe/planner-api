# frozen_string_literal: true

FactoryBot.define do
  factory :goal do
    description { Faker::Hipster.sentence }
  end
end
