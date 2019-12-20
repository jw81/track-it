class Stat < ApplicationRecord
  validates :game_id, presence: true
  validates :value, presence: true, numericality: { only_integer: true }

  belongs_to :game
end
