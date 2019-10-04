require 'test/unit'

class VariableScopeLoopsAndBlocksTest < Test::Unit::TestCase

  def test_1
    a = 0
    while a < 3
      puts a
      i = 9 # la definisco qua, ma la vedo anche fuori.
      a += 1
    end
    puts i
  end

  def test_2
    [1,2,3].each do |x|
      y = x + 1
    end
    puts y # non la vede.
  end

  def test_3
    y = 'X'
    [1,2,3].each do |x|
      y = x + 1
    end
    puts y # la vede perché era precedentemente definita, ed è stata influenzata dal blocco.
  end

end
