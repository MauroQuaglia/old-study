require 'test-unit'
require '../bowling'
require '../shots'
require '../frame'

class BowlingTest < Test::Unit::TestCase

  def test_first_frame
    bowling = Bowling.new Shots.new [2, 3]
    assert_equal 5, bowling.frame(1).score
    assert_equal 5, bowling.total_score
  end

  def test_first_frame_spare
    bowling = Bowling.new Shots.new [4, 6]
    frame = bowling.frame(1)

    assert_equal 10, frame.score
  end

  def test_first_frame_strike
    bowling = Bowling.new Shots.new [10]
    frame = bowling.frame(1)

    assert_equal 10, frame.score
  end

  def test_second_frame
    bowling = Bowling.new Shots.new [2, 3, 4, 5]
    frame = bowling.frame(2)

    assert_equal 9, frame.score
  end

  private


end