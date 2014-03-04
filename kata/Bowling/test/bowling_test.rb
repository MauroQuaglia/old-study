require 'test-unit'
require '../bowling'

class BowlingTest < Test::Unit::TestCase

  def setup
    @bowling = Bowling.new
  end

  def test_prova
    puts 0.even?
  end

  def test_no_pin_knocked_down
    @bowling.pins_knocked_down 0

    assert_equal 0, @bowling.score
    assert_equal 'Frame 1 - Shot 1; Pins knocked down: 0', @bowling.info
  end

  def test_one_pin_knocked_down
    @bowling.pins_knocked_down 5

    assert_equal 5, @bowling.score
    assert_equal 'Frame 1 - Shot 1; Pins knocked down: 5', @bowling.info
  end

  def test_two_shots
    @bowling.pins_knocked_down 3
    assert_equal 3, @bowling.score
    assert_equal 'Frame 1 - Shot 1; Pins knocked down: 3', @bowling.info

    @bowling.pins_knocked_down 2
    assert_equal 5, @bowling.score
    assert_equal 'Frame 1 - Shot 2; Pins knocked down: 2', @bowling.info
  end



end