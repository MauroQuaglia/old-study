require 'test-unit'
require '../bowling'
require '../shots'
require '../frame'

class BowlingTest < Test::Unit::TestCase

  def test_first_frame
    bowling = Bowling.new Shots.new [2, 3]
    assert_score_at_frame(bowling, 1, 5)
  end

  def test_first_frame_spare
    bowling = Bowling.new Shots.new [4, 6]
    assert_score_at_frame(bowling, 1, 10)
  end

  def test_first_frame_strike
    bowling = Bowling.new Shots.new [10]
    assert_score_at_frame(bowling, 1, 10)
  end

  def test_second_frame
    bowling = Bowling.new Shots.new [2, 3, 4, 5]
    assert_score_at_frame(bowling, 2, 9)
  end

  private

  def assert_score_at_frame(bowling, fixnum1, fixnum2)
    frame = bowling.frame(fixnum1)

    assert_equal fixnum2, frame.score
  end


  #def test_double_strike
  #  @bowling.shots [10, 10, 5, 2]
  #
  #  #[10, 10, 5, 2]
  #  #[10, nil, 10, nil, 5, 2] nil non 0 perchè uno in effetti puù non buttar giuu noiente
  #  # ogni frame prende 5 elemeti, butta gli 0 e conta
  #  # chi gestisce il frame fa cosi 1 --> [10, 0, 10, 0, 5, 2]
  #  # chi gestisce il frame fa cosi 2 --> [10, 0, 5, 2] sostanzialmente scarta i primi due
  #
  #  # il bowling deve sapere quali tre elementi mandare al frame.
  #  frame1 = @bowling.frame(1)
  #  assert_equal 25, frame1.score
  #
  #  frame2 = @bowling.frame(2)
  #  assert_equal 17, frame2.score
  #end


end