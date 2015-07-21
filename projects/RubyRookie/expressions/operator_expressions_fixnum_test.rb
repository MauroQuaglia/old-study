require 'test/unit'

class Fixnum
  alias old_plus + # con alias si tiene in memoria il vecchio metodo.

  def +(other)
    self.succ
  end
end

class OperatorExpressionFixnumTest < Test::Unit::TestCase

  def test_1
    p 2 + 5 # 3
    p 2.old_plus(5) # 7
  end

end