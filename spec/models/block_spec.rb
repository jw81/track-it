# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Block, type: :model do
  context 'validation tests' do
    let(:block) { create(:block) }

    it 'is valid with valid attributes' do
      expect(block.save).to be true
    end

    it 'is not valid without a game_id' do
      block.game_id = nil

      expect(block.save).to be false
    end

    it 'is not valid if value is not an integer' do
      block.value = 'not-and-integer'

      expect(block.save).to be false
    end
  end
end
