require 'test/unit'

class DynamicBlockTest < Test::Unit::TestCase

  #
  def test_fail
    calc = lambda{|n| p n}

    my_test('X', &calc)
    my_test('Y'){|n| p n}
  end


  def my_test(a)
    puts a
    yield 'Z'
  end

end