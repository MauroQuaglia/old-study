require 'test-unit'
require_relative 'string_util'

class CleanStringTest < Test::Unit::TestCase

  def test_normalize_empty_string
    assert_normalized('', '')
  end

  def test_normalize_one_character_string
    assert_normalized('', ' ')
    assert_normalized('a', 'a')
  end

  def test_normalize_two_character_string
    assert_normalized('', '  ')
    assert_normalized('a', ' a')
    assert_normalized('a', 'a ')
    assert_normalized('aa', 'aa')
  end

  def test_normalize_three_character_string
    assert_normalized('', '   ')
    assert_normalized('a', '  a')
    assert_normalized('a', ' a ')
    assert_normalized('aa', ' aa')
    assert_normalized('a', 'a  ')
    assert_normalized('a a', 'a a')
    assert_normalized('aa', 'aa ')
    assert_normalized('aaa', 'aaa')
  end

  def test_normalize_four_character_string
    assert_normalized('a a', 'a  a')
  end

  def test_acceptance
    assert_normalized('ciao mirko', 'ciao       mirko')
    assert_normalized('oggi fa freddo', 'oggi fa  freddo')
    assert_normalized('ciao', 'ciao')
  end

  private

  def assert_normalized(expected, original)
    assert_equal(expected, StringUtil.new(original).normalizeSpaces)
  end

end