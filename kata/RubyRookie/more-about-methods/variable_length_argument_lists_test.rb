require 'test/unit'

class VariableLengthArgumentListsTest < Test::Unit::TestCase

  def test_1
    splat_first(1, 2, 'X') # [1, 2], X
  end

  def test_2
    splat_second(1, 2, 'X') # 1, [2, X]
  end

  def test_3
    splat_between(1, 2, 3, 'X') # 1, X
  end

  def test_4
    my_reverse_splat 1, *[2, 'X']
  end

  def test_5
    five(1, 2, 3, 4, 5)
    five(1, 2, 3, *['a', 'b'])
    five(*[1, 2], 3, *['a', 'b'])
    five(*(1..5))
  end

  def splat_first(*a, b)
    puts "#{a.class}, #{b.class}"
    puts "#{a}, #{b}"
  end

  def splat_second(a, *b)
    puts "#{a}, #{b}"
  end

  def splat_between(a, *, b)
    puts "#{a}, #{b}"
  end

  def my_reverse_splat(a, b, c)
    # i parametri condensati nell'array vengono esplicitati
    puts "#{a.class}, #{b.class}, #{c.class}"
    puts "#{a}, #{b}, #{c}"
  end

  def five(a, b, c, d, e)
    puts "#{a}, #{b}, #{c}, #{d}, #{e}"
  end

end