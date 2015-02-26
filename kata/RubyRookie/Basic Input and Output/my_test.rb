require 'test/unit'
require_relative 'book_in_stock'

class MyTest < Test::Unit::TestCase

  def test_1
    file = File.new('test-file', 'w')
    file.close
  end

  def test_2
    b = Precedence.new()
    puts b.one
    puts b.two
  end

end
