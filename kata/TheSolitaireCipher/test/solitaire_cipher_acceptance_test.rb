require 'test-unit'
require '../solitaire_cipher'

class SolitaireCipherAcceptanceTest < Test::Unit::TestCase

  def test_remove_characters_that_are_not_letters
    assert_equal 'CODEI NRUBY LIVEL ONGER', SolitaireCipher.new.encode('Code in Ruby, live longer!')
  end


end
