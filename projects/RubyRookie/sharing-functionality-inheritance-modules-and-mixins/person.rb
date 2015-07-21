class Person
  attr_reader :name
  include Comparable

  def initialize(name)
    @name = name
  end

  def to_s
    "Person named #{@name}"
  end

  def <=>(other)
    # praticamente gli sto dicendo di usare il comparable delle stringhe.
    self.name <=> other.name
  end

end