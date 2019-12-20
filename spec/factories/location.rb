FactoryBot.define do
  factory :location do
    city { Faker::Address.city }
    state { Faker::Address.state_abbr }
    description { Faker::Lorem.characters }
  end
end
