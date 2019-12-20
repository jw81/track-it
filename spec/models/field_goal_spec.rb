require 'rails_helper'

RSpec.describe FieldGoal, type: :model do
  context 'validation tests' do
    let(:field_goal) { create(:field_goal) }

    it 'is valid with valid attributes' do
      expect(field_goal.save).to be true
    end

    it 'is not valid without a game_id' do
      field_goal.game_id = nil

      expect(field_goal.save).to be false
    end

    it 'is not valid if value is not an integer' do
      field_goal.value = 'not-and-integer'

      expect(field_goal.save).to be false
    end
  end
end
