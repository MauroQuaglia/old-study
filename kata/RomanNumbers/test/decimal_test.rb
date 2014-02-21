require 'test-unit'
require '../decimal'

class DecimalTest < Test::Unit::TestCase

  def test_one
    assert_equal 'I', Decimal.new.to_roman(1)
  end

end