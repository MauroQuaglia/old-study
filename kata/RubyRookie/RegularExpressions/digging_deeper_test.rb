require 'test/unit'

class DiggingDeeperTest < Test::Unit::TestCase

  def test_1
     p1 = /mm\/dd/
     p2 = Regexp.new('mm/dd')
     p3 = %r{mm/dd}

  end

end