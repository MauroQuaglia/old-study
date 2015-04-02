require 'test/unit'

class Pillola1Test < Test::Unit::TestCase

  def test_1
    hash = {a: 1, b: 2}

    # Come posso avere la garanzia di poter scrivere le assert seguenti?

    assert_equal(:a, hash.keys[0])
    assert_equal(1, hash.values[0])

    assert_equal(:b, hash.keys[1])
    assert_equal(2, hash.values[1])
  end

  def test_2
    n = [1, 2, 3]
    l = %w(a b c d)

    # Come posso scrivere un ciclo che mi scriva:
    # 1 - a
    # 2 - b
    # 3 - c
  end

  def test_3
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
