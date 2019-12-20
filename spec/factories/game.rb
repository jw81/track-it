FactoryBot.define do
  factory :game do
    notes { Faker::Lorem.characters }
    opponent
    location
  end
end
