require 'test/unit'

class CommandExpansionTest < Test::Unit::TestCase

  def test_1
    puts `date`
    puts $?
    puts %x{ls -la}
    puts $?
  end

end