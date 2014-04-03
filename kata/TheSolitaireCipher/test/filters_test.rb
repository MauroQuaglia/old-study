require 'test-unit'
require '../filters'

class FiltersTest < Test::Unit::TestCase

  def test_remove_no_letter_filter
    assert_remove_no_letter_filter('a', 'a')
    assert_remove_no_letter_filter('A', 'A')
    assert_remove_no_letter_filter('1', '')
    assert_remove_no_letter_filter('a1', 'a')
    assert_remove_no_letter_filter('A1', 'A')
  end

  def test_Uppercase_filter
    assert_uppercase_filter('a', 'A')
    assert_uppercase_filter('A', 'A')
  end

  def test_split_character_filter
    assert_split_character_filter('a', 'aXXXX')
    assert_split_character_filter('AAAAA', 'AAAAA')
    assert_split_character_filter('aaaaaa', 'aaaaa aXXXX')
  end

  def test_letter_to_number_filter
    assert_letter_to_number_filter('a', '1')
    assert_letter_to_number_filter('A', '1')
    assert_letter_to_number_filter('l', '12')
    assert_letter_to_number_filter('z', '26')
    assert_letter_to_number_filter('ab', '1 2')
    assert_letter_to_number_filter('a b', '1  2')
  end

  private

  def assert_letter_to_number_filter(value, result)
    assert_equal result, LetterToNumberFilter.new.perform(value)
  end

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