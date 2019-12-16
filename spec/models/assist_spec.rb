require 'rails_helper'

RSpec.describe Assist, type: :model do
  it 'is valid with valid attributes' do
    expect(Assist.new).to be_valid
  end

  it 'is not valid with a non-integer' do
    free_throw = Assist.new(value: 'not-an-integer')
    expect(free_throw).to_not be_valid
  end

  it 'has a value of 1' do
    free_throw = Assist.create
    expect(free_throw.value).to eq(1)
  end
end
