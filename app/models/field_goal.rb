class FieldGoal < Stat
  validates :game_id, presence: true
  validates :value, numericality: true
  
  before_validation :default_value

  def default_value
    self.value ||= 2
  end
end
