# frozen_string_literal: true

FactoryBot.define do
  factory :opponent do
    name { Faker::Team.name }
  end
end
