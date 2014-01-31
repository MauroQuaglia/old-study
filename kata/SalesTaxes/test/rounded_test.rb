require 'test-unit'
require_relative '../rounded'

class RoundedTest < Test::Unit::TestCase

  def test_rouded_up
    rounded = Rounded.new(0.05)

    assert_equal 0, rounded.up(0)
    assert_equal 0.05, rounded.up(0.025)
    assert_equal 0.05, rounded.up(0.050)
    assert_equal 0.10, rounded.up(0.075)
    assert_equal 0.10, rounded.up(0.100)
  end

end

