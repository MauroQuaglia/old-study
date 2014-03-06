require 'test-unit'
require '../frame'

class FrameTest < Test::Unit::TestCase

  def test_strike
    frame = Frame.new [10, 1, 2]

    assert_equal 13, frame.score
  end

  def test_spare
    frame = Frame.new [4, 6, 2]

    assert_equal 12, frame.score
  end

  def test_no_strike_no_spare
    frame = Frame.new [2, 3, 6]

    assert_equal 5, frame.score
  end

end