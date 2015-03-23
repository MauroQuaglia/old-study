require 'test/unit'

class Enumerator3Test < Test::Unit::TestCase

  def test_0
    # dato che tutti gli iteratori sono interni non riesco a scorrere due collezioni contemporaneamente.
    # allora mi faccio dare l'enumerator (che è una implementazione dell'iteratore usabile esternamente)
    n = [1, 2, 3]
    l = ['a', 'b', 'c']

    n_enum = n.to_enum
    l_enum = l.to_enum

    #3.times { p n_enum.next; p l_enum.next }
    # metodo migliore fatto apposta
    loop do
      p n_enum.next;
      p l_enum.next
    end
  end

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
    # quando chiamo un iteratore senza blocco associato, mi ritorna l'enumeratore.
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

end