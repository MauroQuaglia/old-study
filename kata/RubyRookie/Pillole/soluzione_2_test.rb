require 'test/unit'
require 'mathn'

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

  def test_2
    n = Complex::I * Complex::I

    assert_equal(-1.class, n.class)
  end

end

class Person
  include Comparable
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def <=>(other)
    @name <=> other.name
  end

end



