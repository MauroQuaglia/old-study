require 'test/unit'
require_relative 'my_person'
require 'prime'

class MyEnumerableTest < Test::Unit::TestCase

  def test_1
    puts Prime.entries 10
    mauro = MyPerson.new('mauro')
    #antonio = MyPerson.new('antonio')

    puts mauro.to_a

  end

end