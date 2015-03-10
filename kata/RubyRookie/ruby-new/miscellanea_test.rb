require 'test/unit'

class MiscellaneaTest < Test::Unit::TestCase

  def test_1
    # Mando un MESSAGIO alla classe Basic che si chiama new.
    # La classe Basic viene detta RECEIVER, perché riceve il messaggio.
    # new è un metodo della classe chiamato costruttore.
    String.new
  end

  def test_2
    puts 'ciao\nciao'
    puts "ciao\nciao"
  end

  def test_3
    puts [1, 'b', nil]
    p [1, 'b', nil]
  end

  def test_4
    # Per evitare la noia delle virgolette e delle virgole possiamo usare %w
    p ['1', 'b']
    p %w(1 b)
  end

  def test_6
    # Uso dei simboli, ma non ho dovuto predichiararli da nessuna parte.
    p my_symbol(:ag)
    p my_symbol(:mq)
  end

  def test_7
    # Il simbolo è istanziato una sola volta
    p :name.object_id
    p :name.object_id
    p 'name'.object_id
    p 'name'.object_id
  end

  def test_8
    # STATEMENT MODIFIER
    if 1 < 2
      p 'ciao'
    end

    p 'ciao' if 1 < 2
  end

  def test_9
    file = File.open('test.txt')
    while line = file.gets
      puts line
    end
    # gets è un metodo del kernel che ritorna la linea corrente o nil se è finito il file
    # assegna a line la riga 1 del file, poi valuta la riga 1, una stringa è true quindi va avanti
    # assegna a line la riga 2 del file, poi valuta la riga 2, una stringa è true quindi va avanti
    # assegna a line la riga 3 del file, poi valuta la riga 3, nil è false quindi esce dal ciclo
  end

  private

  def my_symbol(s)
    s == :mq ? 'ciao' : 'miao'
  end

end

