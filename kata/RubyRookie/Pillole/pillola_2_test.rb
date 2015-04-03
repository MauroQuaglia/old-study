require 'test/unit'

class Pillola2Test < Test::Unit::TestCase

  def test_1
    # Far passare le assert seguenti.

    mauro = Person.new('mauro')
    antonio = Person.new('antonio')
    riccardo = Person.new('riccardo')

    #assert_false(antonio > mauro)
    #assert_false(antonio >= mauro)
    #assert_true(antonio < mauro)
    #assert_true(antonio <= mauro)
    #assert_false(antonio == mauro)
    #assert_true(mauro.between?(antonio, riccardo))
  end

end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

