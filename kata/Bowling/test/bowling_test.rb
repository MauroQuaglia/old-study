require 'test-unit'
require '../bowling'
require '../frame'

class BowlingTest < Test::Unit::TestCase

  def setup
    @bowling = Bowling.new
  end

  def test_strike
    @bowling.shots [10, 1, 2]

    first_frame = @bowling.frame(1)

    assert_equal 13, first_frame.score
  end

  def test_spare
    @bowling.shots [4, 6, 2]

    first_frame = @bowling.frame(1)

    assert_equal 12, first_frame.score
  end

  def test_no_strike_no_spare
    @bowling.shots [2, 3, 5]

    first_frame = @bowling.frame(1)

    assert_equal 5, first_frame.score
  end


end