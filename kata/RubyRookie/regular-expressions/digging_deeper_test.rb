require 'test/unit'

class DiggingDeeperTest < Test::Unit::TestCase

  def test_1
    p1 = /mm\/dd/
    p2 = Regexp.new('mm/dd')
    p3 = %r{mm/dd}

    p p1 =~ 'x mm/dd y'
    p p2 =~ 'x mm/dd y'
    p p3 =~ 'x mm/dd y'
  end

  def test_2
    p /cat/ =~ 'x Cat y' # nil
    p /cat/i =~ 'x Cat y' # 0 case insensitive

    p Regexp.new('cat') =~ 'x Cat y'
    p Regexp.new('cat', 'i') =~ 'x Cat y'

    p %r{cat} =~ 'x Cat y'
    p %r{cat}i =~ 'x Cat y'
  end


end