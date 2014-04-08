require 'test-unit'
require '../normalize_filter'

class NormalizeFilterTest < Test::Unit::TestCase

  def setup
    @filter=NormalizeFilter.new
  end

  def test_less_than_five_letters
    assert_equal 'aaxxx', @filter.do('aa')
  end

  def test_equal_than_five_letters
    assert_equal 'aaaaa', @filter.do('aaaaa')
  end

  def test_greather_than_five_letters
    assert_equal 'aaaaaaaxxx', @filter.do('aaaaaaa')
  end

  def test_does_nothing
    assert_equal 'a', @filter.undo('a')
  end

  def test_acceptance
    result = @filter.do('axx')
    assert_equal 'axxxx', result

    result = @filter.undo(result)
    assert_equal 'axxxx', result
  end

end