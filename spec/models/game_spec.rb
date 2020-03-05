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

    it 'is not valid when note is longer than 1000 characters' do
      game = create(:game)
      game.notes += 'this will make the note too long'

      expect(game.save).to eq(false)
    end

    context 'setting the result' do
      it 'allows setting a win' do
        game = create(:game)
        game.win!

        expect(game.win?).to be true
      end

      it 'allows setting a loss' do
        game = create(:game)
        game.loss!

        expect(game.loss?).to be true
      end

      it 'raises an error with any other value' do
        expect { game.result = 'bananas' }.to raise_error(ArgumentError)
      end
    end
  end
end
