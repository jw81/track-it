require 'rails_helper'

RSpec.describe FreeThrow, type: :model do
  it 'is valid with valid attributes' do
    expect(FreeThrow.new).to be_valid
  end

  it 'is not valid with a non-integer' do
    free_throw = FreeThrow.new(value: 'not-an-integer')
    expect(free_throw).to_not be_valid
  end

  it 'has a value of 1' do
    free_throw = FreeThrow.create
    expect(free_throw.value).to eq(1)
  end
end
