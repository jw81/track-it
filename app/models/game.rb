# frozen_string_literal: true

# Represents a basketball game
class Game < ApplicationRecord
  validates :opponent_id, presence: true
  validates :location_id, presence: true
  validates :notes, length: { maximum: 1000 }, allow_blank: true

  has_many :stats
  belongs_to :opponent
  belongs_to :location

  def points_total
    points = 0
    points += stats.where(type: 'FieldGoal').sum('value')
    points += stats.where(type: 'ThreePointer').sum('value')
    points + stats.where(type: 'FreeThrow').sum('value')
  end

  def offensive_rebounds_total
    offensive_rebounds = 0
    offensive_rebounds + stats.where(type: 'OffensiveRebound').sum('value')
  end

  def defensive_rebounds_total
    defensive_rebounds = 0
    defensive_rebounds + stats.where(type: 'DefensiveRebound').sum('value')
  end

  def assists_total
    assists = 0
    assists + stats.where(type: 'Assist').sum('value')
  end

  def steals_total
    steals = 0
    steals + stats.where(type: 'Steal').sum('value')
  end

  def blocks_total
    blocks = 0
    blocks + stats.where(type: 'Block').sum('value')
  end

  def turnovers_total
    turnovers = 0
    turnovers + stats.where(type: 'Turnover').sum('value')
  end

  def fouls_total
    fouls = 0
    fouls + stats.where(type: 'Foul').sum('value')
  end
end
