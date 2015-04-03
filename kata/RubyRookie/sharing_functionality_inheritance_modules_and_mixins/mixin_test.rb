require 'test/unit'
require_relative 'person'
require_relative 'phonograph'
require_relative 'eight_track'

class MixinTest < Test::Unit::TestCase

  def test_1
    p Phonograph.new('XXX').who_am_i?
    p EightTrack.new('YYY').who_am_i?
  end

  def test_2
    # il modulo Comparable presuppone che nella classe sia definto il metodo <=>
    # fatto questo ho sei funzioni di comparazione gratis! <, <=, ==, >=, >, <=>

    p 'a' < 'b'
    p 'a' <= 'b'
    p 'a' == 'b'
    p 'a' >= 'b'
    p 'a' > 'b'

    p 'a' <=> 'b'
    p 'a' <=> 'a'
    p 'c' <=> 'a'
  end

  def test_3
    p1 = Person.new('matz')
    p2 = Person.new('guido')
    p3 = Person.new('larry')

    # dato che person include il compare ho gratis i sei metodi di comparazione
    puts p1 < p2

    #dato che il sort su un array usa l'operatore <=> posso ordinare un array di persone
    #il puts viene chiamato su ogni elemento dell'array.
    puts [p3, p1, p2].sort
  end

end