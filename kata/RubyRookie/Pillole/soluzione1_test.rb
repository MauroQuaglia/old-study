require 'test/unit'

class Soluzione1Test < Test::Unit::TestCase

  def test_1
    hash = {a: 1, b: 2}

    assert_equal(:a, hash.keys[0])
    assert_equal(1, hash.values[0])

    assert_equal(:b, hash.keys[1])
    assert_equal(2, hash.values[1])
  end

  def test_2
    n = [1, 2, 3]
    l = %w(a b c d)

    n_enum = n.to_enum
    l_enum = l.to_enum

    loop do
      p "#{n_enum.next} - #{l_enum.next}"
    end
  end

  def test_3
    p Integer.all.select{|n| n % 2 == 0}.first(10)
  end

end

class Integer
  def self.all
    Enumerator.new do |yielder, n: 0|
      loop do
        yielder << n
        n += 1
      end
    end.lazy
  end
end
