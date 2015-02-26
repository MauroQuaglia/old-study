require 'test/unit'
#require_relative 'precedence'

class ErrorsTest < Test::Unit::TestCase

  def test_1

    1.upto(3) do |x|
      puts x
    end

    1.upto(3) { |x| puts x }

    # prima {} poi do .. end
  end


  def two
    if block_given?
      "Block given to 'two' returns: [#{yield}]."
    end
  end

  
  def one(arg)
    if block_given?
      "Block given to 'one' returns: [#{yield}]."
    else
      arg
    end
  end

  result1 = one two { "three" }

  result2 = one two do
    "three"
  end

  puts "With braces, result = #{result1}" #'two'
  puts "With do/end, result = #{result2}" #'one'

end
