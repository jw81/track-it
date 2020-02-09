# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Assist, type: :model do
  context 'validation tests' do
    let(:assist) { create(:assist) }

    it 'is valid with valid attributes' do
      expect(assist.save).to be true
    end

    it 'is not valid without a game_id' do
      assist.game_id = nil

      expect(assist.save).to be false
    end

    it 'is not valid if value is not an integer' do
      assist.value = 'not-and-integer'

      expect(assist.save).to be false
    end
  end
end
