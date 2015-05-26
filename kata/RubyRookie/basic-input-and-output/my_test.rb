require 'test/unit'
require_relative 'book_in_stock'
require 'stringio'
require 'socket'


class MyTest < Test::Unit::TestCase

  def test_2

    b = Precedence.new()
    puts b.one
    puts b.two
  end


  def test_5
    input = StringIO.new('Impara a usare Ruby!')
    output = StringIO.new('')

    input.each_line do |line|
      output.puts line.reverse
    end

    puts output.string
  end

  def test_6
   # client = TCPSocket.open('127.0.0.1', 'www')
    #puts client.readline
    #puts client.readline
    #client.close


  end

  def test_7
    assert_equal('a', 'a')
    refute_equal('a', 'b')
  end

  def test_8
    a = nil
    refute_nil(a, 'Non va!')
  end




end
