require 'test/unit'

def Integer.all
  Enumerator.new do |y, n = 0|
    loop {y << n += 1}
  end # significa lazy enumerator
  # in tal caso non ritorno un array di dati, ma un nuovo enumerator.
end


class EnumeratorTest < Test::Unit::TestCase

  def test_1
    a = [1, 3, 'cat']
    enum_a = a.to_enum
    p enum_a.next
    p enum_a.next
    p enum_a.next

    h = {dog: 'canine', fox: 'vulpine'}
    enum_h = h.to_enum
    p enum_h.next
    p enum_h.next
  end

  def test_2
    a = [1, 3, 'cat']
    enum_a = a.each
    p enum_a.next
    p enum_a.next
    p enum_a.next
  end

  def test_3
    a = [1, 3, 'cat']
    enum_a1 = a.each # mi torna l'enumerator se a each non gli passo il blocco
    p enum_a1
    enum_a2 = a.to_enum # mi ritorna l'enumerator
    p enum_a2
  end

  def test_4
     # loop continua ad eseguire il ciclo finchè una condizione non è verificata
     #loop do
     # p 'x'
     # end
  end

  def test_5
    # loop però è furbo, se lo uso con un enumerator quando ha raggiunto la fine esce.
    a = [1, 2, 3]
    b = ('a'..'z')
    enum_a = a.to_enum
    enum_b = b.to_enum
    loop do
      puts "#{enum_a.next} - #{enum_b.next}"
    end
  end

  def test_6
    result = []
    %w(c a t).each_with_index{|item, index| result << [item, index]}
    # Qui è stato facile perché c'era l'iterator.
    p result

    result2 = []
    #'cat'.each_char mi ritorna l'enumerator, poi su ogni enumerator posso chiamare each_with_index!!!
    'cat'.each_char.each_with_index{|item, index| result2 << [item, index]}
    p result2

    #versione compatta
    result3 = []
    'cat'.each_char.with_index{|item, index| result3 << [item, index]}
    p result3
  end

  def test_7
    # un altro modo per ottenere l'enumerator:
    p 'cat'.enum_for(:each_char) #dammi l'enum del metodo each_char
    p 'cat'.each_char # idem come sopra
  end

  def test_8
    # se il metodo che usa l'enumerator prende parametri, noi possiamo passarli all'enum_for.
    p (1..10).each_slice(3){|a| p a} # each_slice usa l'enumerator e prende parametri.
    # quindi:
    p (1..10).enum_for(:each_slice, 3).to_a
  end

  def test_9
    triangular_numbers = Enumerator.new do |yielder|
      number = 0
      count = 1
      loop do
        number += count
        count += 1
        # finchè non torno un valore lui fa il loop
        #yielder.yield number è la sintassi che si usa per tornare il valore number
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

  def test_10
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

  def test_11
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

  def test_12
    p Integer.all.first(10)
  end

  def test_13
    # se non ci metto lazy nell'enumerator non funziona, continua a rimanere appeso e a calcolare valori ma non ritorna mai...
    # un'alternativa potrebbe essere specificare il metodo lazy prima di select
    p Integer.all.lazy.select{|i| (i % 3).zero? }.first(10)
    #p Integer.all.select{|i| (i % 3).zero? }.first(10)
  end

  def palindrome?(n)
    n = n.to_s
    n == n.reverse
  end

  def test_14
    p Integer
      .all
      .select{|i| (i % 3).zero? }
      .select{|i| palindrome?(i) }
      .first(10)
  end

  def test_15
    # posso anche usare questa sintassi
    multiple_of_three = -> n { (n % 3).zero? }
    palindrome = -> n { n = n.to_s; n == n.reverse }

    p Integer
      .all
      .select(&multiple_of_three)
      .select(&palindrome)
      .first(10)
  end


end