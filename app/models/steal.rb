class Steal < Stat
  before_validation :default_value

  def default_value
    self.value ||= 1
  end
end
