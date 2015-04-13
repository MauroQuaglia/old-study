require 'test/unit'

class Pillola2Test < Test::Unit::TestCase

  def test_1
    # Far passare le assert.

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

  def test_2
    # Far passare l'assert.
    n = Complex::I * Complex::I

    # assert_equal(-1.class, n.class)
  end

  def test_3
    # Prendere dal file tutto ciò che sta tra START e END, questi ultimi compresi.
    File.foreach('range.csv') do |line|
      puts line if true
    end
  end

end

class Person
  attr_reader :name

  def initialize(name)
    @name = name
  end

end

