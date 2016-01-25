require 'test/unit'

class Soluzione7Test < Test::Unit::TestCase

  def test_1
    p Integer.all.select{|n| n % 2 == 0}.first(10)
  end

  def test_2
    # Oppure senza mettere il lazy sull'enumeratore posso anche fare così.
    p Integer.all.lazy.select{|n| n % 2 == 0}.first(10)
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

