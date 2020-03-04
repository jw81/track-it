# frozen_string_literal: true

FactoryBot.define do
  factory :game do
    notes { Faker::Lorem.characters(number: 999) }
    opponent
    location
  end
end
