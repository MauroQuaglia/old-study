require 'test/unit'

class StructuringTestsTest < Test::Unit::TestCase

  def setup
    puts 'setup'
  end

  def teardown
    puts 'teardown'
    puts passed?
  end

  def test_1
    assert_equal(1, 1)
  end

  def test_2
    assert_equal(1, 2)
  end

  def test_3
    assert_equal(1, 1)
  end

end