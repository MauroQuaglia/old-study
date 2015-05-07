require 'test/unit'
require_relative 'score_keeper'

# per overraidare un metodo di object.... lo posso mettere dove voglio senza bisogno di dichiarare object

alias old_backquote `
def `(cmd)
  result = old_backquote(cmd)
  if $? != 0
    puts "Command: [#{cmd}] failed with status: [#{$?.exitstatus}]!"
  end
  result
end


class OperatorExpressionsTest < Test::Unit::TestCase

  def test_1
    a, b, c = 1, 2, 3
    p a * b + c
    # * e + sono dei metodi
    p a.*(b) # sul numero a, chaimo il metodo * a cui passo b come parametro.
    p (a.*(b)).+(c)
  end

  def test_2
   p sk = ScoreKeeper.new
   p sk << 1
   p sk << 2
   p sk.average
  end

  def test_3
    fail
  end

  def test_4
    fail ArgumentError
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

  def test_7
    sk = ScoreKeeper.new
    sk[1] = 2
  end

end

