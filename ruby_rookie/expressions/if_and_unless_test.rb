require 'test/unit'

class IfAndUnlessTest < Test::Unit::TestCase

  def test_1
    if 'c' == 'c'
      p 'ciao'
    end

    if 'c' == 'c' then p 'ciao' end # Tutto su una linea... orribile
  end

  def test_2
    my_if = if 'c' == 'c' then p 'ciao' end
    p defined? my_if
    p my_if
  end

  def test_3
    if 1 == 1
      p 'ok'
    end

    unless 1 == 1 # if (1 != 1)
      p 'xxx'
    end

    unless 1 != 1
      p 'ok'
    end

    if 1 != 2
      p 'ko'
    end

    unless 1 == 2
      p 'ko'
    end
  end

  def test_4
    p 1 == 1 ? 'a' : 'b'
    p 1 != 1 ? 'a' : 'b'
  end

  def test_5
    p 'ciao' if 1 == 1
    p 'CIAO' if 1 != 1
  end
end