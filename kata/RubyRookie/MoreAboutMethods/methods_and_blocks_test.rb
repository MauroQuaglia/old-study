require 'test/unit'

class MethodsAndBlockTest < Test::Unit::TestCase

  def test_1
   double('ciao'){|a, b| puts a * b}
   double2('ciao'){|a, b| puts a * b}
  end

  def test_2
    my_test{|p| double3(p)}
  end

  def test_3
    a, b, c = my_return
    p a + b + c
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

  def double3(x)
    puts 'xxxx' + x
  end

  def my_test()
    yield 'Y'
  end

end