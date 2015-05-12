require 'test/unit'

class ComparingObjectsTest < Test::Unit::TestCase

  def test_1
    # il valore è uguale
   p 1 == 1
   p 1 == 1.0
  end

  def test_2
    # stesso tipo di base (NUMERIC) e stesso valore
    p 1 === 1.0
  end

  def test_3
    # stesso tipo e stesso valore
    p 1.eql?(1.0) # integer non è float
  end

  def test_4
    # stesso object-id
    p 'a'.equal?('a')

    a = 'a'
    p a.equal?(a)
  end

  def test_5
    t = T1.new

    p t == "value"
    p t != "value" # dato che la negazione non è definita, prende il valore di == e lo nega.
  end

  def test_6
    t = T2.new

    p t == "value"
    p t != "value" # dato che la negazione è definita la usa esplicitamente.
  end

end

class T1
  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end
end

class T2
  def ==(other)
    puts "Comparing self == #{other}"
    other == "value"
  end
  def !=(other)
    puts "Comparing self != #{other}"
    other != "value"
  end
end

