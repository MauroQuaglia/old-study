require 'test/unit'

class ParallelAssignmentTest < Test::Unit::TestCase

  def test_1
    a, b = 1, 2
    p a, b
  end

  def test_2
    a = 1, 2, 3, 4
    p a, a.class
  end

  def test_3
    a, b, c = 1, 2, 3, 4
    p a, b, c
  end

  def test_4
    a, b, c = 1, 2
    p a, b, c
  end

  def test_5
    a, b, c, d = *(1..4)
    p a, b, c, d
  end

  def test_6
    a, b, c, d, e = *(1..2), 3, *[4, 9]
    p a, b, c, d, e
  end

  def test_7
    a, *b = 1, 2, 3, *[1, 9]
    p a, b
  end

  def test_8
    a, *b = 1
    p a, b
  end

  def test_9
    g, *a, b = 1, 3, 9, 5
    p g, a, b
  end

  def test_10
    f, *, l = *(1..10)
    p f, l
  end

  def test_11
    f, *, l = [1, 2, 3, 4]
    p f, l
  end

  def test_12
    a, (b, c), d = 1, 2, 3, 4
    p a, b, c, d
    #a = 1
    #(b, c) = 2 -> b=2, c=nil
    #d=3
  end

end