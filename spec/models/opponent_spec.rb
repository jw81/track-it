require 'rails_helper'

RSpec.describe Opponent, type: :model do
  context 'validation tests' do
    let(:opponent) { build(:opponent) }

    it 'is valid with valid attributes' do
      expect(opponent.save).to eq(true)
    end

    it 'is not valid without a name' do
      opponent.name = nil

      expect(opponent.save).to eq(false)
    end

    it 'is not valid without a unique name' do
      opponent_1 = create(:opponent)
      opponent_2 = build(:opponent)

      opponent_2.name = opponent_1.name

      expect(opponent_2.save).to eq(false)
    end
  end
end
