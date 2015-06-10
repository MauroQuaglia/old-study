require 'test/unit'

class BlocksAndSubprocessesTest < Test::Unit::TestCase

  def test_1
    IO.popen('date') {|f| puts "Date is #{f.gets}"}
  end

end

