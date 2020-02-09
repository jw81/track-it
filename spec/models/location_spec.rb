# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Location, type: :model do
  context 'validation tests' do
    let(:location) { build(:location) }

    it 'is valid with valid attributes' do
      expect(location.save).to eq(true)
    end

    it 'is not valid without a city' do
      location.city = nil

      expect(location.save).to eq(false)
    end

    it 'is not valid without a state' do
      location.state = nil

      expect(location.save).to eq(false)
    end

    it 'is not valid if state is not abbreviated' do
      location.state = 'Missouri'

      expect(location.save).to eq(false)
    end

    it 'is not valid when description is longer than 255 characters' do
      location.description += 'this will make the description too long'

      expect(location.save).to eq(false)
    end
  end
end
