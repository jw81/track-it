# frozen_string_literal: true

# Represents a three-pointer statistic
class ThreePointer < Stat
  validates :game_id, presence: true
  validates :value, numericality: true

  before_validation :default_value

  def default_value
    self.value ||= 3
  end

  def self.model_name
    Stat.model_name
  end
end
