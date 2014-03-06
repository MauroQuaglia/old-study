require 'test-unit'
require '../bowling'
require '../frame'

class FrameTest < Test::Unit::TestCase

  def setup
    @bowling = Bowling.new
  end

  def test_double_strike
    @bowling.shots [10, 10, 5, 2]

    # il bowling deve sapere quali tre elementi mandare al frame.
    frame1 = @bowling.frame(1)
    assert_equal 25, frame1.score

    frame2 = @bowling.frame(2)
    assert_equal 17, frame2.score
  end


end