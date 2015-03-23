require 'test/unit'

class IteratorTest < Test::Unit::TestCase

  def test_0
    print 'a', 'b'
  end

  def test_1
    fibonacci_up_to(1000) {|f| print f, ' '}
  end

  def fibonacci_up_to(value)
  x, y = 1, 1
  while x <= value
    yield x
    x, y = y, x + y
  end
  end

  def test_2
    # l'ultima istruzione del blocco viene tornata al metodo chiamante
    my {puts 'ciao'; 'k'}
    puts '-----------------'
    puts my {puts 'ciao'; 'k'}
  end

  def my
    yield
  end

  def test_EACH
    # Itera solo sui valori e li passa al blocco.
    [1, 2, 3].each do |item|
      p item
    end
  end

  def test_FIND
    p [1, 2, 3].find{ |x| x * x >= 4} # esce non appena trova il primo, quindi il 3 non lo ritorna...
    p [1, 2, 3].find{ |x| x * x >= 90} # se non trova niente torna nil
    # il vantaggio è che la classe array fa quello che sa fare meglio, ciò accedere agli elementi dell'array, io devo solo passargli la condizione.
    # normalmente invece mi devo preoccupare anche del ciclo!
  end

  def test_COLLECT
    # collect o map sono la stessa cosa. vengono usati come alias. tornano un array.
    a = ['A', 'b', "C"].collect{|x| x.succ}
    p a
  end

  def test_each_vs_each_with_index
    a = %w(a b)
    a.each{|x| p x}
    p '---'
    a.each.with_index{|x, y| p x, y}
  end

  def test_find_with_index
    p [1, 2, 3].find.with_index{ |x, y| x * x >= 4; y} # mi trova la posizione dove c'è il primo numero che soddisfa
    # la condizione
  end

  def test_difference
    [:foo, :bar, :baz].each.with_index(10) do |value, index|
      puts "#{index}: #{value}"
    end

    [:foo, :bar, :baz].each_with_index do |value, index|
      puts "#{index}: #{value}"
    end
  end

  def test_INJECT
    p [0, 1, 3, 6].inject{|sum, element| sum + element } # somma tutti gli elementi, di default parte dal primo elemento
    p [0, 1, 3, 6].inject(100){|sum, element| sum + element } # somma tutti gli elementi, partendo da 100
  end

  def test_INJECT_somma_e_prodott
    p [2, 6, 8, 2].inject(0){|s, x| s+x} # somma
    p [2, 6, 8, 2].inject(1){|p, x| p*x} # prodotto
  end

  def test_3
    p [].inject{|s,x| s+x}
    p [].inject(0){|s,x| s+x}
  end

  def test_4
    p [2, 6, 8, 2].inject(:+) # posso anche solo specificare il nome del metodo che voglio applicare agli elementi successivi della collezione
    # in questo caso funziona perchè in ruby l'addizione è un metodo su un numero e :x è il simbolo che corrisponde al metodo +.
  end


  def test_5
  p 1.bit_length
  p 2.hash
    p [2, 6, 8, 2].inject(:+) # posso anche solo specificare il nome del metodo che voglio applicare agli elementi successivi della collezione
    # in questo caso funziona perchè in ruby l'addizione è un metodo su un numero e :x è il simbolo che corrisponde al metodo +.
  end

  def test_6
    p [2, 7].inject(28){|s, x| s.div(x)}
    # s=28. s=28/2=14, s=14/7=2. return 2
    # quindi lo riscrivo come:
    p [2, 7].inject(28, :div)
  end

end