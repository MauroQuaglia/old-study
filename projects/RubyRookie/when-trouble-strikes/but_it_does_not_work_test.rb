require 'test/unit'
require_relative 'incorrect'

class ButItDoesNotWorkTest < Test::Unit::TestCase

  def test_1
    obj = Incorrect.new

    p obj.one
    p obj.two
  end

  def test_2
    result1 = one two { 'three' }

    result2 = one two do
      'three'
    end

    puts "With braces, result = #{result1}" #'two'
    puts "With do/end, result = #{result2}" #'one'
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

end
