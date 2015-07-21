require 'test/unit'

class Enumerator3Test < Test::Unit::TestCase

  def test_1
    counter = Enumerator.new do |yielder|
      count = 0
      loop do
        count += 1
        yielder.yield count # è il modo per tornare un valore. oppure uso i <<
      end
    end

    p counter.next
    p counter.next
  end

  def test_2
    counter = Enumerator.new do |yielder|
      count = 0
      loop do
        count += 1
        yielder << count
      end
    end

     # creo il metodo xxx che mi permette di passare un blocco.
     p xxx(counter)
     p xxx(counter) {|n| n % 2 == 0 }.first(10)
  end

  def xxx(enumerator, &block)
    Enumerator.new do |yielder|
      enumerator.each do |value|
        yielder << value if block.call(value)
      end
    end
  end

  def test_3
    counter = Enumerator.new do |yielder|
      count = 0
      loop do
        count += 1
        yielder << count
      end
    end

    # dato che un enumerator è anche un enumerable possimao usare anche i metodi dell'enumerable come per esempio first.
    p counter.first
    p counter.first(1)
    p counter.first(3)
  end

  def test_4
    counter = Enumerator.new do |y|
      count = 0
      # lavora solo qua dentro
      loop do
        count += 1
        y << count # è il modo per buttar fuori il valore dall'enumerator
        puts 'ciao' #lo esegue al secondo giro, al primo esce e basta
      end
    end
    p counter.next
    p counter.next
  end

  def test_5
    counter = Enumerator.new do |yielder|
      count = 0
      loop do
        count += 1
        yielder << count
      end
    end

    # prendo un enumerator qualsiasi e ora dato che ho aperto la classe (VEDI SOTTO) ho anche il metodo
    # selection a disposizione
    p counter
          .selection{|n| n % 2 == 0}
          .selection{|n| n < 30}
          .first(11)
  end

end

class Enumerator
  def selection(&block)
    Enumerator.new do |yielder|
      each do |value|
        yielder << value if block.call(value)
      end
    end
  end
end
