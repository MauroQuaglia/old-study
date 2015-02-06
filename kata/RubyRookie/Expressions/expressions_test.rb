require 'test/unit'
require_relative 'score_keeper'

class MyTest < Test::Unit::TestCase

  def test_1
    p prova
  end

  def test_2
    my_if = if 0 == 0
              'ciao'
            end
  end

  def test_3
    a, b, c = 1, 2, 3
    p a * b + c
    # * e + sono dei metodi
    p a.*(b) # sul numero a, chaimo il metodo * a cui passo b come parametro.
    p (a.*(b)).+(c)
  end

  def prova
    a = b = c = 0
  end

  def test_4
   sk = ScoreKeeper.new
   p sk
   sk << 1
   p sk
   sk << 2
   p sk
   p sk.average
  end

  def test_5
    sk = ScoreKeeper.new
    sk << 1 << 2 <<3
    p sk.average
  end

  def test_6
    sk = ScoreKeeper.new
    sk.average
  end

end

