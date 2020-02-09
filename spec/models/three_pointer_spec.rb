# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ThreePointer, type: :model do
  context 'validation tests' do
    let(:three_pointer) { create(:three_pointer) }

    it 'is valid with valid attributes' do
      expect(three_pointer.save).to be true
    end

    it 'is not valid without a game_id' do
      three_pointer.game_id = nil

      expect(three_pointer.save).to be false
    end

    it 'is not valid if value is not an integer' do
      three_pointer.value = 'not-and-integer'

      expect(three_pointer.save).to be false
    end
  end
end
