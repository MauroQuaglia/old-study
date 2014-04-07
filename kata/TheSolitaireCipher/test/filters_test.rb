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
    assert_split_character_filter('aaaaa', 'aaaaa')
    assert_split_character_filter('AAAAAAAAAAAA', 'AAAAA AAAAA AA')
  end

  def test_complete_string_filter
    assert_complete_string_filter('aaaaa', 'aaaaa')
    assert_complete_string_filter('AAAAAAA', 'AAAAAAAXXX')
  end

  def test_letter_to_number_filter
    assert_letter_to_number_filter('a', [1])
    assert_letter_to_number_filter('A', [1])
    assert_letter_to_number_filter('l', [12])
    assert_letter_to_number_filter('z', [26])
    assert_letter_to_number_filter('ab', [1, 2])
    assert_letter_to_number_filter('a b', [1, 2])
  end

  def test_number_generator_filter
    assert_number_generator_filter(
        [-4, -23, -10, -24, -8, -25, -18, -6, -4, -7, -20, -13, -19, -8, -16, -21, -21, -18, -24, -10],
        [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0])
  end

  def test_number_generator_filter_with_limit_26
    assert_number_generator_filter(
        [3, 15, 4, 5, 9, 14, 18, 21, 2, 25, 12, 9, 22, 5, 12, 15, 14, 7, 5, 18],
        [7, 12, 14, 3, 17, 13, 10, 1, 6, 6, 6, 22, 15, 13, 2, 10, 9, 25, 3, 2])
  end

  def test_number_to_letter_filter
    assert_number_to_letter_filter([1], 'A')
    assert_number_to_letter_filter([12], 'L')
    assert_number_to_letter_filter([26], 'Z')
    assert_number_to_letter_filter([1, 2], 'AB')
  end

  def test_prova

  end


  private

  def assert_number_to_letter_filter(value, result)
    assert_equal result, NumberToLetterFilter.new.perform(value)
  end

  def assert_number_generator_filter(value, result)
    assert_equal result, NumberGeneratorFilter.new.perform(value)
  end

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

  def assert_complete_string_filter(value, result)
    assert_equal result, CompleteStringFilter.new.perform(value)
  end

end