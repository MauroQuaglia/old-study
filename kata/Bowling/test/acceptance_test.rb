require 'test-unit'
require '../bowling'
require '../shots'

class AcceptanceTest < Test::Unit::TestCase

  def test_first_frame_first_shot
    bowling = Bowling.new Shots.new [1]

    assert_equal 1, bowling.frame(1).score
    assert_equal 1, bowling.total_score
  end

  def test_first_frame_second_shot
    bowling = Bowling.new Shots.new [1, 4]

    assert_equal 5, bowling.frame(1).score
    assert_equal 5, bowling.total_score
  end

  def test_second_frame_first_shot
    bowling = Bowling.new Shots.new [1, 4, 4]

    assert_equal 5, bowling.frame(1).score
    assert_equal 4, bowling.frame(2).score
    assert_equal 9, bowling.total_score
  end

  def test_second_frame_second_shot
    bowling = Bowling.new Shots.new [1, 4, 4, 5]

    assert_equal 5, bowling.frame(1).score
    assert_equal 9, bowling.frame(2).score
    assert_equal 14, bowling.total_score
  end

  def test_third_frame_first_shot
    bowling = Bowling.new Shots.new [1, 4, 4, 5, 6]

    assert_equal 5, bowling.frame(1).score
    assert_equal 9, bowling.frame(2).score
    assert_equal 6, bowling.frame(3).score
    assert_equal 20, bowling.total_score
  end

  def test_third_frame_second_shot
    bowling = Bowling.new Shots.new [1, 4, 4, 5, 6, 4]

    assert_equal 5, bowling.frame(1).score
    assert_equal 9, bowling.frame(2).score
    assert_equal 10, bowling.frame(3).score
    assert_equal 24, bowling.total_score
  end


  #[1, 4, 4, 5, 6, 4, 5, 5, 0, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]
end