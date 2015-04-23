require 'test/unit'
require_relative 'show'

class AlternationTest < Test::Unit::TestCase

  def setup
    @show = Show.new
  end

  def test_1
    value = 'red ball blue sky'

    @show.regex(value, /d|e/)
    @show.regex(value, /al|lu/)
    @show.regex(value, /red ball|angry sky/)
  end

end