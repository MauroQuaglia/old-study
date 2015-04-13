class MyRange
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def succ
    MyRange.new(@value + 1)
  end

  def <=>(other)
    self.value <=> other.value
  end

end