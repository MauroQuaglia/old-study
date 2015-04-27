require 'test/unit'

class AdvancedLookingTest < Test::Unit::TestCase

  def test_1
    str = 'red,white,blue yellow'

    p str.scan(/[a-z]+(?=,)/) #r w
    p str.scan(/(?<=,)[a-z]+/) # w b
  end

  def test_2
    str = 'a,b,c d e'

    p str.scan(/[a-z]+(?!,)/) # c d e
    p str.scan(/(?<!,)[a-z]+/) # a d e
  end


end