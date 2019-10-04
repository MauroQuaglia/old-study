require 'test-unit'

class PrintTest < Test::Unit::TestCase

  def test_1
    # scrive i conenuti di quello che gli passo e va a capo, non fa vedere i nil
    # chiama il metodo to_s quindi se ne faccio l'override scrivo quello che volglio
    puts 'ciao'
    puts Numeric
    puts Numeric.new
    puts [1, 'k']
    puts nil
  end

  def test_2
    # scrive quello che gli passo, non va a capo, non fa vedere i nil.
    print 'ciao'
    print Numeric
    print Numeric.new
    print [1, 'k']
    print nil
  end

  def test_3
    # scrive quello che gli passo, va a capo, fa vedere i nil.
    p 'ciao'
    p Numeric
    p Numeric.new
    p [1, 'k']
    p nil
  end

  def test_4
    #printf formatta il testo sotto il controllo di una certa stringa
    printf("Number:%10.2f,\nString:%s\n", 1.123, 'hello')
    #10 -> minimo numero di caratteri. serve per la formattazione. infatti si ha Number: xxxxxxxxxx
    #2 -> il numero di cifre decimali dopo il punto.
  end

end