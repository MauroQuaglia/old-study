require 'test-unit'
require '../solitaire_cipher'

class AcceptanceTest < Test::Unit::TestCase

  def test_number_to_letter_filter
    assert_solitare_chiper(
        [RemoveNoLetterFilter, UppercaseFilter, CompleteStringFilter,
         LetterToNumberFilter, NumberGeneratorFilter, NumberToLetterFilter,
         SplitCharacterFilter],
        'Code in Ruby, live longer!', 'GLNCQ MJAFF FVOMB JIYCB')
  end

  private

  def assert_solitare_chiper(filters, value, result)
    assert_equal result, SolitaireCipher.new(filters).encode(value)
  end

end
