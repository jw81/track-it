require 'rails_helper'

RSpec.describe OffensiveRebound, type: :model do
  context 'validation tests' do
    let(:offensive_rebound) { create(:offensive_rebound) }

    it 'is valid with valid attributes' do
      expect(offensive_rebound.save).to be true
    end

    it 'is not valid without a game_id' do
      offensive_rebound.game_id = nil

      expect(offensive_rebound.save).to be false
    end

    it 'is not valid if value is not an integer' do
      offensive_rebound.value = 'not-and-integer'

      expect(offensive_rebound.save).to be false
    end
  end
end
