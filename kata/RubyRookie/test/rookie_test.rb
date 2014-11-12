require 'test-unit'
require 'time'

class RookieTest < Test::Unit::TestCase

  def test_fail
   xxx(100){|f,l,a| puts f.wday + a; puts l.day}
  end

  def xxx(arg)
    yield [Time.now,Time.now,arg]
  end

end