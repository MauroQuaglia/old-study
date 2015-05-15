require 'test/unit'

class VariableScopeLoopsAndBlocksTest < Test::Unit::TestCase

  def test_9
    a = 0
    while a < 3
      puts a
      i = 9
      a += 1
    end
    puts i
  end

  def test_10
    [1,2,3].each do |x|
      y = x + 1
    end
    puts [x,y]
  end

  def test_11
    x = 'ciao'
    y = 'miao'
    [1,2,3].each do |x|
      y = x + 1
    end
    puts [x,y]
  end

  def test_12
    x =
    [1,2,3].each do |x|
      x + 1
    end
    p x
  end
end
