# frozen_string_literal: true

FactoryBot.define do
  factory :account do
    email { 'fake@gmail.com' }
    password { 'password' }
  end
end
