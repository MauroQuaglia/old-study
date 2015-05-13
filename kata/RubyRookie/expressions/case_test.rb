require 'test/unit'

class CaseTest < Test::Unit::TestCase

  def test_1
    a = 1
    case
      when a == 1
        p 'a=1' # se esce qua non prosegue e la seconda non la esegue.
      when a.class == Fixnum
        p 'a=Fixnum'
      else
        p 'ciao'
    end
  end

  def test_2
    a = 1
    case a
      when 1
        p 'a=1'
      when 2
        p 'a=2'
      else
        p 'ciao'
    end
  end

  def test_3
    a = 1
    b = case a
          when 1
            p 'a=1'
          else
            p 'ciao'
        end
    p b
  end

  def test_4
    a = 1
    case 10
      when 1...10
        p '1-9'
      when 10...20
        p '10-19'
      else
        p '>= 20'
    end
  end

  def test_5
    # La comparazione è fatta usando ===.
    # Il range reimplementa === in modo che funzioni anche se utilizzato nel case.
    a = 'h'
    case a
      when ('a'..'f')
        p 'a-f'
      when ('g'..'z')
        p 'g-z'
    end
  end

  def test_6
    a = 2
    case a
      when 1, 2
        p '1 o 2'
      else
        p 'ciao'
    end
  end

  def test_7
    value = B.new
   case value
     when A
       p 'A'
     else
       p 'X'
    end
  end

end

class A
end

class B < A
end

