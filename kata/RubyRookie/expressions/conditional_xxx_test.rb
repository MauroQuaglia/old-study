require 'test/unit'
require_relative 'score_keeper'

class ConditionalXxxTest < Test::Unit::TestCase

  def test_1
    if 'c' == 'c' then
      p 'ciao'
    end

    if 'c' == 'c' then p 'ciao' end

    a =
      if 'c' == 'c'
         p 'ciao'
      elsif 'c' == 'd'
        p 'fff'
      else
        p 'g'
      end

    p a + a + a
  end

  def test_2
   if 1 == 1
     p 'ok'
   end

   unless 1 != 1
     p 'ok'
   end

    if 1 != 2
      p 'lll'
    end

    unless 1 == 2
      p 'ddddd'
    end
  end

  def test_3
    p 1 == 1 ? 'a' : 'b'
    p 1 != 1 ? 'a' : 'b'
  end

  def test_4
    a1 = A.new
    b1 = B.new
    a2 = ScoreKeeper.new

    case a1
      when A then p 'Eccoci!'
      else p 'No!'
    end
  end

  def test_5
    p 1 === 1
    p 1 === 1.0 # la classe base mi pare sia numeric per entrambe quindi funziona anche così
    p 1 === 2
  end

  def test_6
    p 1 === 1.0 # numeric di base e 1 di valore
    p 1.eql?(1.0) # integer e float
  end

end

class A

end

class B < A

end
