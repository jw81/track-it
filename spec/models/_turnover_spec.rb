# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Turnover, type: :model do
  context 'validation tests' do
    let(:turnover) { create(:turnover) }

    it 'is valid with valid attributes' do
      expect(turnover.save).to be true
    end

    it 'is not valid without a game_id' do
      turnover.game_id = nil

      expect(turnover.save).to be false
    end

    it 'is not valid if value is not an integer' do
      turnover.value = 'not-and-integer'

      expect(turnover.save).to be false
    end
  end
end
