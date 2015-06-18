require 'test/unit'
require_relative 'incorrect'

class ButItDoesNotWorkTest < Test::Unit::TestCase

  def test_1
    obj = Incorrect.new

    p obj.one
    p obj.two
  end



end
