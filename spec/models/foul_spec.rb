require 'rails_helper'

RSpec.describe Foul, type: :model do
  context 'validation tests' do
    let(:foul) { create(:foul) }

    it 'is valid with valid attributes' do
      expect(foul.save).to be true
    end

    it 'is not valid without a game_id' do
      foul.game_id = nil

      expect(foul.save).to be false
    end

    it 'is not valid if value is not an integer' do
      foul.value = 'not-and-integer'

      expect(foul.save).to be false
    end
  end
end
