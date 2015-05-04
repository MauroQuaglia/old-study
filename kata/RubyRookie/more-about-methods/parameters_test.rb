require 'test/unit'

class ParametersTest < Test::Unit::TestCase

  def test_1
    my_method 'a'
    my_method 'a', 'c'

    my_method_hash 'a'
    # my_method_hash 'a', 'c' questo non funziona
    my_method_hash_splat 'a'
    my_method_hash_splat 'a', c: 'd', b: 0
  end


  def my_method(a, b='b')
    p [a, b]
  end

  def my_method_hash(a, b: 'b')
    p [a, b]
  end

  def my_method_hash_splat(a, b: 'b', **rest)
    p [a, b, rest]
  end

end