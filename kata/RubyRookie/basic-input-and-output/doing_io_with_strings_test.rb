require 'test/unit'
require 'stringio'

class DoingIOWithStringsTest < Test::Unit::TestCase

  def test_1
    file = StringIO.new('Now is\nthe time\nto learn\nRuby!')
    console = StringIO.new('')

    file.each_line {|line| console.puts line }

    puts console.string
  end

end
