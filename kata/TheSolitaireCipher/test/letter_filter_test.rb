require 'test-unit'
require '../letter_filter'

class LetterFilterTest < Test::Unit::TestCase

  def setup
    @filter=LetterFilter.new
  end

  def test_no_remove_letter
    assert_equal 'a', @filter.do('a')
  end

  def test_remove_number
    assert_equal '', @filter.do('1')
  end

  def test_remove_symbol
    assert_equal '', @filter.do('#')
  end

  def test_remove_accent
    assert_equal '', @filter.do('à')
  end

  def test_does_nothing
    assert_equal 'a', @filter.undo('a')
  end

  def test_acceptance
    result = @filter.do('a1')
    assert_equal 'a', result

    result = @filter.undo(result)
    assert_equal 'a', result
  end

end