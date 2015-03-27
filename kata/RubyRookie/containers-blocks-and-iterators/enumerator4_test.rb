require 'test/unit'

class Integer
  def self.all
    Enumerator.new do |yielder, n: 0|
      loop do
        yielder << n
        n += 1
      end
    #end.lazy
    end
  end
end

class Enumerator4Test < Test::Unit::TestCase

  def test_1
    # Se non è lazy continua all'infinito.
    # Se lazy finisce tornando i primi dieci valori richiesti. Infatti nell'enumerator che torno tramite il metodo all
    # i metodi select, map, ecc, definiti di default sono reimplementati e consumano solo quanto basta per soddisfare la
    # richiesta.
    p Integer.all.select{|n| n % 2 == 0}.first(10)
  end

  def palindrome?(n)
    n = n.to_s
    n == n.reverse
  end

  def test_2
    p Integer
        .all
        .select{|i| (i % 3).zero? }
        .select{|i| palindrome?(i) }
        .first(10)
  end

  def test_3
    # posso anche usare questa sintassi definendo una proc. IL vantaggio è che questa la posso riutilizzare.
     multiple_of_two = -> n { (n % 2) == 0 }
    p Integer.all.select(&multiple_of_two).first(10)
  end

  def test_4
    # se non ci metto lazy nell'enumerator non funziona, continua a rimanere appeso e a calcolare valori senza uscire.
    # un'alternativa potrebbe essere specificare il metodo lazy prima di select
    p Integer.all.lazy.select{|i| (i % 3).zero? }.first(10)
  end


end