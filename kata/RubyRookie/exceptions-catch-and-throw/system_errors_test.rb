require 'test/unit'

class SystemErrorsTest < Test::Unit::TestCase

  def test_1
    p Errno::ENOENT::Errno
    p `x` # Errno::ENOENT
  end

end
