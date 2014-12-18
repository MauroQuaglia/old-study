require 'test/unit'

class BlockTest < Test::Unit::TestCase

  def test_1
    p [0..4].class
  end

  def test_2
    p [1, 2].each{|v|v+10} # itera e basta
    p [1, 2].map{|v|v+10} # torna un nuovo array
  end

  def test_3
    puts ['ciao: 2', 'riciao: 3']
    p ['ciao: 2', 'riciao: 3']
  end

  def test_4
    a = [[1, 2, 3], %w(a b c)]
    a.each{|x, y, z| p x + y + z} # in questo caso il blocco prende tre parametri: x, y, z.
  end


end