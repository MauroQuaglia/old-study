require 'test/unit'

class Pillola7Test < Test::Unit::TestCase

  def test_1
    # Selezionare i primi dieci numeri pari dalla classe Integer.
  end

end

class Integer
  def self.all
    Enumerator.new do |yielder, n: 0|
      loop do
        yielder << n
        n += 1
      end
    end
  end
end
