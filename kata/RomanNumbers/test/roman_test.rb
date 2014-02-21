require 'test-unit'
require '../roman'

class RomanTest < Test::Unit::TestCase

  def test_one
    assert_equal 1, Roman.new.to_decimal('I')
  end

end