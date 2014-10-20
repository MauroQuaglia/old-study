require 'test-unit'
require_relative '../w3c_validator'

class W3cValidatorTest < Test::Unit::TestCase

  def test_empty_page_is_valid
    assert_true(W3cValidator.new.is_valid?('/home/xpuser/studio/mauro-quaglia/studio/w3c-validator/test/data/empty.html'))
  end

end