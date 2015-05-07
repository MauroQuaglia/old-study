require 'test/unit'

class ExpressionsTest < Test::Unit::TestCase

  def test_1
    p multiple_assignment
  end

  def test_2
    my_if =
        if 0 == 0
          'ciao'
        end

    p my_if
  end

  def multiple_assignment
    a = b = c = 0
  end

end

