require 'test-unit'
require '../filters'

class FiltersTest < Test::Unit::TestCase


  def test_split_character_filter
    assert_split_character_filter('aaaaa', 'aaaaa')
    assert_split_character_filter('AAAAAAAAAAAA', 'AAAAA AAAAA AA')
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


  def assert_number_generator_filter(value, result)
    assert_equal result, NumberGeneratorFilter.new.perform(value)
  end



  def assert_split_character_filter(value, result)
    assert_equal result, SplitCharacterFilter.new.perform(value)
  end


end