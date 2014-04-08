require 'test-unit'
require '../conversion_filter'

class ConversionFilterTest < Test::Unit::TestCase

  def setup
    @filter=ConversionFilter.new
  end

  def test_convert_letter
    assert_equal [12], @filter.do('l')
  end

  def test_convert_letters
    assert_equal [1, 2], @filter.do('ab')
  end

  def test_convert_number
    assert_equal 'l', @filter.undo([12])
  end

  def test_convert_numbers
    assert_equal 'ab', @filter.undo([1, 2])
  end

  def test_acceptance
    result = @filter.do('ab')
    assert_equal [1, 2], result

    result = @filter.undo(result)
    assert_equal 'ab', result
  end

end