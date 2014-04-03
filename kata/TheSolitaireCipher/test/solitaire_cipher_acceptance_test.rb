require 'test-unit'
require '../solitaire_cipher'

class SolitaireCipherAcceptanceTest < Test::Unit::TestCase

  def setup
    @value='Code in Ruby, live longer!'
  end

  def test_one_filter
    assert_solitare_chiper(
        [RemoveNoLetterFilter],
        @value, 'CodeinRubylivelonger')
  end

  def test_two_filters
    assert_solitare_chiper(
        [RemoveNoLetterFilter, UppercaseFilter],
        @value, 'CODEINRUBYLIVELONGER')
  end

  def test_three_filters
    assert_solitare_chiper(
        [RemoveNoLetterFilter, UppercaseFilter, SplitCharacterFilter],
        @value, 'CODEI NRUBY LIVEL ONGER')
  end

  def test_four_filters
    assert_solitare_chiper(
        [RemoveNoLetterFilter, UppercaseFilter, SplitCharacterFilter, LetterToNumberFilter],
        @value, '3 15 4 5 9  14 18 21 2 25  12 9 22 5 12  15 14 7 5 18')
  end

  private

  def assert_solitare_chiper(filters, value, result)
    assert_equal result, SolitaireCipher.new(filters).encode(value)
  end

end
