class FieldGoal < Stat
  before_validation :default_value

  def default_value
    self.value ||= 2
  end
end
