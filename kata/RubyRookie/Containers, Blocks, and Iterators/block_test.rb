require 'test/unit'
require_relative 'word_from_string_test'

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

  def test_5
    w = WordFromString.new
    a = [1, 2]
    a.each do |item|
      w = item # w è globale al metodo. sta prendendo quella definita all'inizio
    end
    puts w
  end

  def test_6
    w = WordFromString.new
    a = [1, 2]
    a.each do |item; w| # definisco una variabile locale w. Non c'entra niente con quella definita all'inizio.
      w = item
    end
    puts w
  end

  def test_7
    my('a')
  end

  private

  def my(a, &block)
    block.call {puts 'ciao'}
  end

end