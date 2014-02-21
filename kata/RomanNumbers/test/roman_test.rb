require 'test-unit'
require '../roman'

class RomanTest < Test::Unit::TestCase

  def test_one
    assert_equal 1, Roman.new.to_decimal('I')
  end

  def test_two
    assert_equal 2, Roman.new.to_decimal('II')
  end

  def test_three
    assert_equal 3, Roman.new.to_decimal('III')
  end

  def test_four
    assert_equal 4, Roman.new.to_decimal('IV')
  end

  def test_prova
   # puts 1.
  end

end