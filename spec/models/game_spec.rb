# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Game, type: :model do
  context 'validation tests' do
    let(:game) { build(:game) }

    it 'is not valid without an opponent_id' do
      game.opponent_id = nil

      expect(game.save).to eq(false)
    end

    it 'is not valid without a location_id' do
      game.location_id = nil

      expect(game.save).to eq(false)
    end

    it 'is not valid when note is longer than 255 characters' do
      game = create(:game)
      game.notes += 'this will make the note too long'

      expect(game.save).to eq(false)
    end
  end
end
