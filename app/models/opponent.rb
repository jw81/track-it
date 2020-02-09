# frozen_string_literal: true

# Represents an opponent of a game
class Opponent < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  has_many :games
end
