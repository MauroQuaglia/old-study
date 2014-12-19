require 'test/unit'

class IteratorTest < Test::Unit::TestCase

  def test_0
    print 'a', 'b'
  end

  def test_1
    fibonacci_up_to(1000) {|f| print f, ' '}
  end

  def fibonacci_up_to(value)
  x, y = 1, 1
  while x <= value
    yield x
    x, y = y, x + y
  end
  end

  def test_EACH
    # Itera solo sui valori e li passa al blocco.
    [1, 2, 3].each do |item|
      p item
    end
  end

  def test_FIND
    p [1, 2, 3].find{ |x| x * x >= 4} # esce non appena trova il primo, quindi il 3 non lo ritorna...
    p [1, 2, 3].find{ |x| x * x >= 90} # se non trova niente torna nil
    # il vantaggio è che la classe array fa quello che sa fare meglio, ciò accedere agli elementi dell'array, io devo solo passargli la condizione.
    # normalmente invece mi devo preoccupare anche del ciclo!
  end

end