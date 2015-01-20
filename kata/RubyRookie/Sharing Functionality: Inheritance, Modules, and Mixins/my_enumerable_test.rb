require 'test/unit'
require_relative 'my_person'

class MyEnumerableTest < Test::Unit::TestCase

  def test_1
    mauro = MyPerson.new('mauro')
    antonio = MyPerson.new('antonio')

    array = [antonio, mauro]
    p array.min
  end

end