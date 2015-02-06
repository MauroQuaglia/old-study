require 'test/unit'


class Fixnum
  alias old_plus + # con alias si tiene in memoria il vecchio metodo.

  def +(other)
    self.succ
  end
end

class ExpressionsRedefinedTest < Test::Unit::TestCase

  def test_1
    p 2 + 5
    p 2.old_plus(5)
  end

  def test2
    p 1 + 3
    p 1.old_plus(3)
  end

  def test3
    p 1 + 3
  end

end