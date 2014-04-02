require 'test-unit'
require '../filters'

class FiltersTest < Test::Unit::TestCase

  def test_remove_no_letter_filter
    assert_remove_no_letter_filter('', '')
    assert_remove_no_letter_filter('a', 'a')
    assert_remove_no_letter_filter('1', '')
    assert_remove_no_letter_filter('a1', 'a')
  end

  def test_Uppercase_filter
    assert_uppercase_filter('', '')
    assert_uppercase_filter('a', 'A')
    assert_uppercase_filter('A', 'A')
  end

  def test_split_character_filter
    assert_split_character_filter('aa', 'aaXXX')
    assert_split_character_filter('aaaaa', 'aaaaa')
    assert_split_character_filter('aaaaaaa', 'aaaaa aaXXX')
  end

  private

  def assert_remove_no_letter_filter(value, result)
    assert_equal result, RemoveNoLetterFilter.new.perform(value)
  end

  def assert_uppercase_filter(value, result)
    assert_equal result, UppercaseFilter.new.perform(value)
  end

  def assert_split_character_filter(value, result)
    assert_equal result, SplitCharacterFilter.new.perform(value)
  end

end