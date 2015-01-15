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
    # il < di person chiama questo metodo per decidere che comparazione usare.
    # in questo caso è un compare sulle stringhe in ordine alfabetico
    self.name <=> other.name
  end

end