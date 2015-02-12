require 'test/unit'

class ComparisonTest < Test::Unit::TestCase

  def test_1
    t = T.new
    t == 'value'
    t != 'value' # cerca la definizione di == e la nega
  end

  def test_2
    q = Q.new
    q == 'value'
    q != 'value' #va diretto sulla definizione
  end

end

class T

  def ==(other)
    other == 'value'
    p 'Sono in =='
  end

end

class Q

  def ==(other)
    other == 'value'
    p 'Sono in =='
  end

  def !=(other)
    other != 'value'
    p 'Sono in !='
  end

end