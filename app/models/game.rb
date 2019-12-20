class Game < ApplicationRecord
  validates :opponent_id, presence: true
  validates :location_id, presence: true
  validates :notes, length: { maximum: 255 }, allow_blank: true

  has_many :stats
  belongs_to :opponent
  belongs_to :location
end
