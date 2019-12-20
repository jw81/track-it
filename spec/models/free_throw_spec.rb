require 'rails_helper'

RSpec.describe FreeThrow, type: :model do
  context 'validation tests' do
    let(:free_throw) { create(:free_throw) }

    it 'is valid with valid attributes' do
      expect(free_throw.save).to be true
    end

    it 'is not valid without a game_id' do
      free_throw.game_id = nil

      expect(free_throw.save).to be false
    end

    it 'is not valid if value is not an integer' do
      free_throw.value = 'not-and-integer'

      expect(free_throw.save).to be false
    end
  end
end
