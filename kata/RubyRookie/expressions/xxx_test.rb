require 'test/unit'

class XxxTest < Test::Unit::TestCase


  def test_8
    puts `date`
    puts $?
    puts %x{ls -la}
    puts $?
  end

  def test_9
    print `ls -l /etc/passwd`
    print `ls -l /etc/wibble`
  end

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

  def test_11
    p nil && 99
    p true && 99
  end

  def test_12
    p nil || 99 #99
    p 'ciao' || nil # ciao
  end

  def test_13
    var1 = 'io'
    var1 ||= 'tu'
    puts var1

    var2 ||= 'default'
    puts var2
  end

  def test_14
    var = var || 'default'
    p var
  end

  def test_15
    p defined? 1
    p defined? x
    p defined? print
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