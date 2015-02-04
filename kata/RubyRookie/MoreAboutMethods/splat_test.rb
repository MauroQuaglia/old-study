require 'test/unit'

class SplatTest < Test::Unit::TestCase

  def test_1
    my_splat 1, 2, 'X'
  end

  def test_2
    my_reverse_splat 1, *[2, 'X']
  end

  def test_3
    five(1, 2, 3, 4, 5)
    five(1, 2, 3, *['a', 'b'])
    five(*[1, 2], 3, *['a', 'b'])
    five(*(1..5))
  end

  def my_splat(a, *b)
    # i parametri dentro b sono condensati in un array
    puts "#{a.class}, #{b.class}"
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