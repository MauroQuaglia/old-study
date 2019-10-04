require 'test-unit'

class ContainersTest < Test::Unit::TestCase

  def test_1
    # l'inizializzazione non è troppo diversa!
    array = []
    hash = {}
    p array
    p hash
  end

  def test_2
    hash = {
        'a'.to_sym => 1, # simbolo, notazione verbosa
        'b' => 2, # stringa
         c: 3, #simbolo, è uno short cut per usare il simbolo invece di :c => 3
        :d => 4, #simbolo, notazione verbosa
        :e.to_s => 5 #stringa, notazione verbosa
    }
    p hash
  end

  def test_3
    default_value = Hash.new(0)
    p default_value['a']

    default_value['a'] = default_value['a'] + 1
    p default_value['a']
  end

end