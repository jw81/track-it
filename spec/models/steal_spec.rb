# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Steal, type: :model do
  context 'validation tests' do
    let(:steal) { create(:steal) }

    it 'is valid with valid attributes' do
      expect(steal.save).to be true
    end

    it 'is not valid without a game_id' do
      steal.game_id = nil

      expect(steal.save).to be false
    end

    it 'is not valid if value is not an integer' do
      steal.value = 'not-and-integer'

      expect(steal.save).to be false
    end
  end
end
