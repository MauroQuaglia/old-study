require 'test-unit'
require_relative 'basic'

class BasicTest < Test::Unit::TestCase

  def test_1
    # Mando un MESSAGIO alla classe Basic che si chiama new.
    # La classe Basic viene detta RECEIVER, perché riceve il messaggio.
    # new è un metodo della classe chiamato costruttore.
    Basic.new
    puts Basic.new.object_id
  end

  def test_2
    puts 'ciao\nciao'

    puts "ciao\nciao"
    puts "ciao #{Basic.new.hello.capitalize}"
  end

  def test_3
    puts Basic.new.global_variable_process_id
  end

  def test_4
    puts [1, 'b', nil]
    puts '---'
    puts [1, 'b', nil].inspect
  end

  def test_5
    # Per evitare la noia delle virgolette e delle virgole possiamo usare %w
    puts ['1', 'b', 'v'].inspect
    puts %w(1 b v).inspect
  end

  def test_6
    # l'inizializzazione non è troppo diversa!
    array = []
    hash = {}
    puts array.inspect
    puts hash.inspect
  end

  def test_7
    hash = {
        'a'.to_sym => 1, #la chiave è un simbolo
        'b' => 2, # la chiave è una stringa
         c: 3 #la chiave è un simbolo
    }
    puts hash.inspect
    puts hash['b']
    puts hash[:c]
    puts hash['h'] # non scrive nil
    p hash['h'] # scrive nil. lo mostra esplicitamente
  end

  def test_8
    default_value = Hash.new(0)
    puts default_value['a']

    default_value['a'] = default_value['a'] + 1
    puts default_value['a']
  end

  def test_9
   puts :name.object_id
   puts :name.object_id
   puts 'name'.object_id
   puts 'name'.object_id
  end

  def test_10
    hash = {
        :name => 'mauro',
        surname: 'massimo',
        'via' => 'ciao'
    }
    puts hash[:name]
    puts hash[:surname]
    puts hash[:via.to_s]
  end

  def test_11
    file = File.open('test.txt')
    while line = file.gets
      puts line
    end
    # gets è un metodo del kernel che ritorna la linea corrente o nil se è finito il file
    # assegna a line la riga 1 del file, poi valuta la riga 1, una stringa è true quindi va avanti
    # assegna a line la riga 2 del file, poi valuta la riga 2, una stringa è true quindi va avanti
    # assegna a line la riga 3 del file, poi valuta la riga 3, nil è false quindi esce dal ciclo
  end

  def test_12
    # gli STATEMENT MODIFIER sono shortcut per compattare la sintassi nel caso di una singola espressione
    if 1 < 2
      puts 'ciao'
    end

    puts 'ciao' if 1 < 2
  end

end