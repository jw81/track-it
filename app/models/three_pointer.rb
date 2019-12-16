class ThreePointer < Stat
  before_validation :default_value

  def default_value
    self.value ||= 3
  end
end
