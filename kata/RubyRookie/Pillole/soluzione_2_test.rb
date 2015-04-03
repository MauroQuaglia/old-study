require 'test/unit'

class Soluzione2Test < Test::Unit::TestCase

  def test_1
    mauro = Person.new('mauro')
    antonio = Person.new('antonio')
    riccardo = Person.new('riccardo')

    assert_false(antonio == mauro)
    assert_false(antonio > mauro)
    assert_false(antonio >= mauro)
    assert_true(antonio < mauro)
    assert_true(antonio <= mauro)
    assert_true(mauro.between?(antonio, riccardo))
  end

end

class Person
  include Comparable, Enumerable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def <=>(other)
    @name <=> other.name
  end

  def each
    @name
  end

end


