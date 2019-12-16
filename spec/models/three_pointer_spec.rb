require 'rails_helper'

RSpec.describe ThreePointer, type: :model do
  it 'is valid with valid attributes' do
    expect(ThreePointer.new).to be_valid
  end

  it 'is not valid with a non-integer' do
    free_throw = ThreePointer.new(value: 'not-an-integer')
    expect(free_throw).to_not be_valid
  end

  it 'has a value of 3' do
    free_throw = ThreePointer.create
    expect(free_throw.value).to eq(3)
  end
end
