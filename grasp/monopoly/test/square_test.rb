require 'test-unit'
require_relative '../board'
require_relative '../square'

class SquareTest < Test::Unit::TestCase
  def test_should_get_correct_square
    via_square = Board.new.get_square('Via')

    assert_equal('Via', via_square.name)
  end
end