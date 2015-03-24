require 'test/unit'

class Enumerator
  def selection(&block)
    Enumerator.new do |yielder|
      each do |value|
        yielder << value if block.call(value)
      end
    end
  end
end

class Enumerator4Test < Test::Unit::TestCase

  def test_1
    counter = Enumerator.new do |yielder|
      count = 0
      loop do
        count += 1
        yielder.yield count # è il modo per tornare un valore
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

     p odder(counter)
     p odder(counter) {|n| n % 2 == 0 }.first(10)
  end

  def odder(enumerator, &block)
    Enumerator.new do |yielder|
      enumerator.each do |value|
        yielder << value if block.call(value)
      end
    end
  end

  def test_3
    triangular_numbers = Enumerator.new do |yielder|
      number = 0
      count = 1
      loop do
        number += count
        count += 1
        # finchè non torno un valore lui fa il loop

        yielder.yield number # alias:  yielder << number
      end
    end

    p triangular_numbers.next
    p triangular_numbers.next
    p triangular_numbers.next
    p triangular_numbers.next
    p triangular_numbers.next
    p triangular_numbers.next

    # dato che un enumerator è anche un enumerable possimao usare anche i metodi dell'enumerable come per esempio first.
    p triangular_numbers.first
    p triangular_numbers.first(1)
    p triangular_numbers.first(3)
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

  def infinite_select(enum, &block)
    Enumerator.new do |y|
      enum.each do |value|
        y << value if block.call(value) # qui li colleziona fino a 5
      end
    end
  end

  def infinite_select2(enum, &block)
    enum.each do |value|
      return value if block.call(value) #in questo caso esce subito
    end
  end

  def test_5
    triangular_numbers = Enumerator.new do |y|
      number = 0
      count = 1
      loop do
        number += count
        count += 1
        y << number
      end
    end

    p infinite_select(triangular_numbers){|val| val % 10 == 0}.first(5)
    puts '----------'
    p infinite_select2(triangular_numbers){|val| val % 10 == 0}

  end

  def test_6

  end

end