require 'test-unit'

class VariablesTest < Test::Unit::TestCase

  def test_1
    # Una variabile NON è un oggetto.
    # Una variabile è solo un puntatore ad un oggetto.
    v = 'ciao'
    puts v.class
    puts v.object_id
  end

  def test_2
    # In ruby le stringhe sono mutabili, in java no.
    # immutabile significha che dopo che è stato creato non può essere cambiato.
    person1 = "Tim"
    person2 = person1

    puts person1.object_id
    puts person2.object_id

    person1[0] = 'J' #Occhio, non la sto ridefinendo, la sto modificando!

    puts person1
    puts person2
  end

  def test_3
    person1 = "Tim"
    person2 = person1

    puts person1.object_id
    puts person2.object_id

    person1 = 'XXX' #qui invece l'ho ridefinita!
    puts person1.object_id
    puts person2.object_id

    puts person1
    puts person2
  end

  def test_4
    person1 = 'Tim'
    person2 = person1
    person3 = person1.dup # Nuovo oggetto ma con lo stesso contenuto.
    puts person1.object_id
    puts person2.object_id
    puts person3.object_id
  end

  def test_5
    person1 = 'Tim'
    person1.freeze
    person1[0] = 'J'
  end

end