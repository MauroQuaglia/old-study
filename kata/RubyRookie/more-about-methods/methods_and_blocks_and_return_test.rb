require 'test/unit'

class MethodsAndBlockAndReturnTest < Test::Unit::TestCase

  def test_1
   double('ciao'){|a, b| puts a * b}
   double2('ciao'){|a, b| puts a * b}
  end

  def test_2
    a, b, c = my_return
    p a + b + c
  end

  def test_3
    a = my_return
    p a
    p a.class
  end

  def my_return
    return 'a', 'b', 'c'
  end

  def double(p)
    yield(p, 2)
  end

  def double2(a, &p)
    p.call a, 3
  end

end