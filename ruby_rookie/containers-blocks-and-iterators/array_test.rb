require 'test/unit'

class ArrayTest < Test::Unit::TestCase

  def test_1
    a=['a']
    p a.class
    p a[0]
    p a[1]

    b=Array.new
    p b.class
    b[0]='x'
    b[1]='y'
    p b
  end

  def test_2
    # Per vedere tutti i metodi. Un array lo posso istanziare con la new o con [].
    puts Array.new.methods
    puts '---'
    puts [].methods
  end

  def test_3
    a=['a', 'z']
    p a[-3]
    p a[-2]
    p a[-1]
    p a[0]
    p a[1]
    p a[2]
  end

  def test_4
    a = %w(a b c d e f g)

    # io gli dico gli ESTREMI poi lui va da sinistra a destra
    p a[2] #c
    p a[-3] #e
    p a[1..3] #b c d
    p a[1...3] #b c
    p a[-3..-1] # e f g
    p a[4..-2] # e f
    p a[-2..1] # da f -> b NON FA IL GIRO
    p a[0..-3] # da a -> e
  end

  def test_5
    a = %w(a b c d e f g)
    p a[2..4] #cde
    p a[2, 4] #cdef. Parte dalla posizione 1 e ne prende in tutto 3

    p a[-3..2] #
    p a[-3, 2] #ef
  end

  def test_6
    a = ['a']
    p a[0]

    a[0] = 'b'
    p a[0]

    a[2] = 'xxx'
    p a

    a[1]=[1,2,3]
    p a
  end

  def test_7
    a = %w(a b c d e f g)

    a[2, 2] = 'CAT'
    p a # ["a", "b", "CAT", "e", "f", "g"]

    a[2, 0] = 'DOG' # con lo 0 lo inserisce davanti!
    p a # ["a", "b", "DOG", "CAT", "e", "f", "g"]

    a[1, 1] = [9, 8, 7]
    p a # ["a", 9, 8, 7, "DOG", "CAT", "e", "f", "g"]

    a[0..3] = []
    p a # ["DOG", "CAT", "e", "f", "g"]

    a[4..6] = 99, 98, 100
    p a # ["DOG", "CAT", "e", "f", 99, 98, 100]
  end

  def test_8
    # uso un array come uno stack!
    stack = []
    stack.pop #ok non bomba
    stack.push 'a'
    stack.push 'b'
    stack.push 'c'
    p stack
    stack.pop
    p stack
  end

  def test_9
    # uso un array come una queue!
    queue = []
    queue.push 'a'
    queue.push 'b'
    p queue
    queue.shift
    p queue
  end

  def test_10
    a = [1, 2, 3, 4, 5]
    p a.first
    p a.first(2)
    p a.last
    p a.last(2)
  end

  def test_10a
    a = [1, 2, 3, 4, 5]
    p a.first(1)
    p a.first
    p a.last(1)
    p a.last
  end

  def test_11
    a = []
    a[0] = 'a'
    a[2] = 'c'
    p a
  end

  def test_12
    a = ['a', 'b']
    p a[-2..1]

    a = ['a', 'b', 'c']
    p a[-2..1]

    a = ['a', 'b', 'c', 'd']
    p a[-2..1]
  end

  def test_13
    a = %w(a b c d e f g)
    p a
    a[1..2] = 99, 98, 100
    p a
  end

end