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


  def test_3
    a, b, c = 1, 2, 3
    p a * b + c
    # * e + sono dei metodi
    p a.*(b) # sul numero a, chaimo il metodo * a cui passo b come parametro.
    p (a.*(b)).+(c)
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

  def test_7
    sk = ScoreKeeper.new
    sk[1,2,3]
  end

  def test_8
    puts `date`
    puts $?
    puts %x{ls -la}
    puts $?
  end

  def test_9
    print `ls -l /etc/passwd`
    print `ls -l /etc/wibble`
  end

  def test_10
    a = 1, 2, 3
    p a
    b = 1
    p b
    d ,j, l = a
    p d + j + l

    h, k = [1, 3]
    p h
    p k
  end

  def test_11
    p nil && 99
    p true && 99
  end

  def test_12
    p nil || 99 #99
    p 'ciao' || nil # ciao
  end

  def test_13
    var1 = 'io'
    var1 ||= 'tu'
    puts var1

    var2 ||= 'default'
    puts var2
  end

  def test_14
    var = var || 'default'
    p var
  end

  def test_15
   p defined? 1
   p defined? x
   p defined? print
  end

  def test_16
    p 1.eql?(2)
    p 1.eql?(1)
    p 1.eql?(1.0)

    p '1'.equal?('1')
    a = '1'
    p a.equal?(a)

    p 1 == 1.0
  end


end

