require 'test-unit'
require_relative 'string_util'

class CleanStringTest < Test::Unit::TestCase

  def test_return_empty_string
    assert_equal('', StringUtil.new('').cleaned)
  end

  def test_return_cleaned
    assert_equal('a b', StringUtil.new('a  b').cleaned)
  end


  def test_prova
    puts 'abc'.split(//)
  end

end
