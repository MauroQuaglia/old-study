require 'test/unit'

class MyTest < Test::Unit::TestCase

  def test_1
    file = File.new('test-file', 'w')
    file.close
  end

end
