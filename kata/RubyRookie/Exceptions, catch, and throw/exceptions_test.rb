require 'test/unit'

class ExceptionsTest < Test::Unit::TestCase

  def test_1

  end


end

class MyExc1 < NoMemoryError

end

class MyExc2 < StandardError

end
