require 'test/unit'

class Pillola1Test < Test::Unit::TestCase

  def test_1
    hash = {a: 1, b: 2}

    # Come posso avere la garanzia di poter scrivere le assert seguenti?

    assert_equal(:a, hash.keys[0])
    assert_equal(1, hash.values[0])

    assert_equal(:b, hash.keys[1])
    assert_equal(2, hash.values[1])
  end

end