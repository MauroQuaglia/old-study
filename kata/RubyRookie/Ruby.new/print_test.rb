require 'test-unit'

class PrintTest < Test::Unit::TestCase

  def test_1
    # va a capo
    puts 'ciao'
    puts Numeric
    puts Numeric.new
    puts [1, 'k']
  end

  def test_2
    # non va a capo
    print 'ciao'
    print Numeric
    print Numeric.new
    print [1, 'k']
  end

  def test_3
    # fa vedere il contenuto
    p 'ciao'
    p Numeric
    p Numeric.new
    p [1, 'k']
  end

  def test_4
    #printf formatta il testo sotto il controllo di una certa stringa
    printf("Number: %10.2f,\nString :%s\n", 1.123, 'hello')
    #10 -> minimo numero di caratteri. serve per la formattazione. infatti si ha Number: xxxxxxxxxx
    #2 -> il numero di cifre decimali dopo il punto.
  end


end