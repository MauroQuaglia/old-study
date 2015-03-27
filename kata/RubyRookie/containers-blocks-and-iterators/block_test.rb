require 'test/unit'
require_relative 'words_from_string'

class BlockTest < Test::Unit::TestCase

  def test_1
    p [0..4].class
  end

  def test_2
    p [1, 2].each{|v|v+10} # itera e basta
    p [1, 2].map{|v|v+10} # torna un nuovo array
  end

  def test_3
    a = [[1, 2, 3], %w(a b c)]
    a.each{|x, y, z| p x + y + z} # in questo caso il blocco prende tre parametri: x, y, z.
  end

  def test_4
    w = WordFromString.new
    a = [1, 2]
    a.each do |item|
      w = item # w è globale al metodo. sta prendendo quella definita all'inizio
    end
    puts w
  end

  def test_5
    w = WordFromString.new
    a = [1, 2]
    a.each do |item|
      l = item # l vive solo nello scope del blocco
    end
    puts l
  end

  def test_6
    w = WordFromString.new
    a = [1, 2]
    a.each do |w|
      puts w
    end
    puts w
  end

  def test_7
    w = WordFromString.new
    a = [1, 2]
    a.each do |item; x, y, z| # definisco delle variabili locali x, y, z. Invece item è quella a cui viene passato il valore.
      x = item + 10
      y = item + 20
      z = item + 30
      p item
      p x, y, z
    end
    puts w
  end

  def test_8
    [1,2].each{|item, n: 0| puts n }
  end

end