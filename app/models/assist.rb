# frozen_string_literal: true

# Represents a assist statistic
class Assist < Stat
  validates :game_id, presence: true
  validates :value, numericality: true

  before_validation :default_value

  def default_value
    self.value ||= 1
  end

  def self.model_name
    Stat.model_name
  end
end
