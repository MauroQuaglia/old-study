require 'test/unit'

class XxxTest < Test::Unit::TestCase


  def test_10
    a = 1, 2, 3
    p a
    b = 1
    p b
    d ,j, l = a
    p d + j + l

    h, k = [1, 3]
    p h
    p k
  end


  def test_16
    p 1.eql?(2)
    p 1.eql?(1)
    p 1.eql?(1.0)

    p '1'.equal?('1')
    a = '1'
    p a.equal?(a)

    p 1 == 1.0
  end


end