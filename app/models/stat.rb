class Stat < ApplicationRecord
  validates :value, presence: true, numericality: { only_integer: true }
end
