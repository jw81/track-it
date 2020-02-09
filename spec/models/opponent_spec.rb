# frozen_string_literal: true

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
      opponent1 = create(:opponent)
      opponent2 = build(:opponent)

      opponent2.name = opponent1.name

      expect(opponent2.save).to eq(false)
    end
  end
end
