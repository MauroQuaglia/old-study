require 'test/unit'

class TheTestingFrameworkTest < Test::Unit::TestCase

  def test_1
    number = 1
    assert_equal(1, number)
  end

  def test_2
    number = 2
    assert_equal(1, number)
  end

  def test_3
    number = 2
    refute_equal(1, number)
  end

  def test_4
    number = 2
    assert_equal(1, number, 'Failure!')
  end


end