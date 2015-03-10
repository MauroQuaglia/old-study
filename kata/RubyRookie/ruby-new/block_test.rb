require 'test-unit'

class BlockTest < Test::Unit::TestCase

  # Test sulla precedenza {} vs do .. end
  # Prima vengono eseguite le {}, poi il costrutto do .. end
  def test_1
    puts [1, 2].each{|i| i}

    # stampa [1, 2].each poi esegue il blocco. come se [1, 2].each fosse un parametro del metodo!
    puts [1, 2].each do |i|
      i
    end

    puts([1, 2].each do |i|
      i
    end)
  end

  def test_2
    # Un ITERATOR è un metodo che torna gli elementi di una collezione.
    [1, 2].each # each è un iterator.
  end

end