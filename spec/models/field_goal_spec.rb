require 'rails_helper'

RSpec.describe FieldGoal, type: :model do
  it 'is valid with valid attributes' do
    expect(FieldGoal.new).to be_valid
  end

  it 'is not valid with a non-integer' do
    free_throw = FieldGoal.new(value: 'not-an-integer')
    expect(free_throw).to_not be_valid
  end

  it 'has a value of 2' do
    free_throw = FieldGoal.create
    expect(free_throw.value).to eq(2)
  end
end
