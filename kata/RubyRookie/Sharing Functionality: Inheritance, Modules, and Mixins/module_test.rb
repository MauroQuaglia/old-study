require 'test/unit'
require_relative 'trig'
require_relative 'moral'

class ModuleTest < Test::Unit::TestCase

  def test_1
   Trig.sin('')
   Moral.sin('')
   p Trig::PI
  end

  def test_2

  end

end