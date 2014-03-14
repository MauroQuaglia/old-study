require 'test-unit'
require '../bowling'
require '../player'

class FrameTest < Test::Unit::TestCase

  def setup
    @bowling = Bowling.new
    @player = Player.new(@bowling.current_frame)
  end

  def test_first_shot
    @player.ninepins(1)

    assert_equal 1, @bowling.frames.first.score
  end

  def test_second_shot
    @player.ninepins(1)
    @player.ninepins(4)

    assert_equal 5, @bowling.frames.first.score
  end

  def test_prova
  end

end