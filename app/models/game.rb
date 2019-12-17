class Game < ApplicationRecord
  has_many :stats
  belongs_to :opponent
  belongs_to :location
end
