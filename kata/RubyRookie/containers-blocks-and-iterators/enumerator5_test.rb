require 'test/unit'

def Integer.all
  Enumerator.new do |y, n = 0|
    loop {y << n += 1}
  end # significa lazy enumerator
  # in tal caso non ritorno un array di dati, ma un nuovo enumerator.
end

class Enumerator4Test < Test::Unit::TestCase


  def test_12
    p Integer.all.first(10)
  end

  def test_13
    # se non ci metto lazy nell'enumerator non funziona, continua a rimanere appeso e a calcolare valori ma non ritorna mai...
    # un'alternativa potrebbe essere specificare il metodo lazy prima di select
    p Integer.all.lazy.select{|i| (i % 3).zero? }.first(10)
    #p Integer.all.select{|i| (i % 3).zero? }.first(10)
  end

  def palindrome?(n)
    n = n.to_s
    n == n.reverse
  end

  def test_14
    p Integer
          .all
          .select{|i| (i % 3).zero? }
          .select{|i| palindrome?(i) }
          .first(10)
  end

  def test_15
    # posso anche usare questa sintassi
    multiple_of_three = -> n { (n % 3).zero? }
    palindrome = -> n { n = n.to_s; n == n.reverse }

    p Integer
          .all
          .select(&multiple_of_three)
          .select(&palindrome)
          .first(10)
  end

end