require 'test/unit'

class ModifiersTest < Test::Unit::TestCase

  def test_1
    a = 1
    case
      when a == 1
        p 'vaffa'
      when a == 2
        p 'ncxxx'
      else
        p 'ciao'
    end
  end

  def test_2
    a = 1
    b = case a
          when 1
            p 'vaffa'
          when 2
            p 'ncxxx'
          else
            p 'ciao'
        end
    p b +b
  end

  def test_3
    a = 1
    case a
      when 1...10 then
        p 'ciao'
      when 10...20 then
        p 'xxxciao'
      else
        p 'dddd'
    end
  end

  def test_4
    # la comparazione è fatta usando ===
    a = 'h'
    case a
      when ('a'..'f') then
        p 'ale'
      when ('g'..'z') then
        p 'ale oo'
    end
  end

  def test_5
    a = 3
    case a
      when 1, 2
        p 'vaffa'
      when 3
        p 'ncxxx'
      else
        p 'ciao'
    end
  end
end