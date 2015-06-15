require 'test/unit'
require '../lib/my_source'

class WhereToPutTestsTest < Test::Unit::TestCase

  def test_1
    assert_equal('hello', MySource.new.say_hello)
  end


end