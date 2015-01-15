require 'test/unit'
require_relative 'phonograph'
require_relative 'eight_track'

class MixinTest < Test::Unit::TestCase

  def test_1
    p Phonograph.new('XXX').who_am_i?
    p EightTrack.new('YYY').who_am_i?
  end

end