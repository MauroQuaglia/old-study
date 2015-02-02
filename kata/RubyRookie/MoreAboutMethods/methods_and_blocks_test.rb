require 'test/unit'

class MethodsAndBlockTest < Test::Unit::TestCase

  def test_1
   double('ciao'){|a, b| puts a * b}
   double2('ciao'){|a, b| puts a * b}
  end


  def double(p)
    yield(p, 2)
  end

  def double2(a, &p)
    p.call a, 3
  end

end