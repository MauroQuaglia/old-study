require 'test-unit'
require 'time'

class Rookie2Test < Test::Unit::TestCase

  def test_fail
   xxx('ok','ko') { |f,l,ok,ko| puts f == l ? ok : ko}
  end

  def xxx(ok,ko)
    yield [1,1,ok,ko]
  end




end