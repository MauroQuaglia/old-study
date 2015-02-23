require 'test/unit'

class MyTest2 < Test::Unit::TestCase

  catch :nok do
    puts '!nok!'
  end

  def test_1
    5.times do |n|
      puts n
      throw :nok if n == 3
    end
  end

end
