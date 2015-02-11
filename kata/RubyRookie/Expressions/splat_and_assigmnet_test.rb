require 'test/unit'

class SplatAndAssignmentTest < Test::Unit::TestCase

  def test_1
    a, b, c, d = *(1..4)
    p a; p b; p c; p d;
  end

  def test_2
    a, b, c, d, e = *(1..2), 3, *[4, 9]
    p a; p b; p c; p d; p e;
  end

  def test_3
    a, *b = 1, 2, 3, *[1, 9]
    p a; p b;
  end

  def test_4
    a, *b = 1
    p a; p b;
  end

  def test_5
    g, *a, b = 1, 3, 9, 5
    p a; p b; p g;
  end

  def test_6
    f, *, l = *(1..10)
    p f; p l;
  end

  def test_7
    f, *, l = [1, 2, 3, 4]
    p f; p l;
  end

  def test_8
    a, b, c, d = 1, 2, 3, 4
    p a; p b; p c; p d;

    a, (b, c), d = 1, 2, 3, 4
    p a; p b; p c; p d;
    #a = 1
    #(b, c) = 2 -> b=2, c=nil
    #d=3
  end

end