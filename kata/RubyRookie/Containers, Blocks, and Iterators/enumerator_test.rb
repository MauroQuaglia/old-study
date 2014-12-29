require 'test/unit'

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

end