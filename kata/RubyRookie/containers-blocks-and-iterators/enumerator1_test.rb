require 'test/unit'

class Enumerator1Test < Test::Unit::TestCase

  def test_6
    result = []
    %w(c a t).each_with_index{|item, index| result << [item, index]}
    # Qui è stato facile perché c'era l'iterator. Infatti sto lavorando con un'array, cioè una collection.
    p result

    result2 = []
    #'cat'.each_char mi ritorna l'enumerator, poi su ogni enumerator posso chiamare each_with_index!!!
    'cat'.each_char.each_with_index{|item, index| result2 << [item, index]}
    p result2

    # altra versione. su un iteratore, ho sempre a disposizione il metodo with_index, quindi lo posso usare.
    result3 = []
    'cat'.each_char.with_index{|item, index| result3 << [item, index]}
    p result3
  end

  def test_7
    # un altro modo per ottenere l'enumerator:
    p 'cat'.enum_for(:each_char) #dammi l'enum del metodo each_char
    p 'cat'.each_char # idem come sopra
    p 'cat'.to_enum # torna l'enumeratore di each
  end

  def test_8
    # se il metodo che usa l'enumerator prende parametri, noi possiamo passarli all'enum_for.
    p (1..10).each_slice(3).to_a # each_slice usa l'enumerator e prende parametri.
    # quindi:
    p (1..10).enum_for(:each_slice, 3).to_a
  end
end