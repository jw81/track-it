require 'rails_helper'

RSpec.describe DefensiveRebound, type: :model do
  context 'validation tests' do
    let(:defensive_rebound) { create(:defensive_rebound) }

    it 'is valid with valid attributes' do
      expect(defensive_rebound.save).to be true
    end

    it 'is not valid without a game_id' do
      defensive_rebound.game_id = nil

      expect(defensive_rebound.save).to be false
    end

    it 'is not valid if value is not an integer' do
      defensive_rebound.value = 'not-and-integer'

      expect(defensive_rebound.save).to be false
    end
  end
end
