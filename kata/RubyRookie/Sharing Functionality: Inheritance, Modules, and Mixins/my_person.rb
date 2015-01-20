class MyPerson
  attr_reader :name
  include Enumerable

  def initialize(name)
   @name = name
  end

  def <=>(other)
    self.name.length <=> other.name.length
  end

end