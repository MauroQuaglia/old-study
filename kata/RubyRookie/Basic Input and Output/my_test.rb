require 'test/unit'
require 'stringio'
require 'socket'

class MyTest < Test::Unit::TestCase

  def test_1
    file = File.new('test-file', 'w')
    file.close
  end

  def test_2
    File.open('test-file.txt') do |file|
      file.each_byte do |chr|
        print "[#{chr.chr}:#{chr}]"
      end
    end
  end

  def test_3
    str = IO.read('test-file.txt') # butta tutto in una string
    p str[0]
    arr = IO.readlines('test-file.txt') # butta tutto in una array
    p arr[0]
  end

  def test_4
    puts File.read('test-file.txt')
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
    client = TCPSocket.open('127.0.0.1', 'www')
    puts client.readline
    puts client.readline
    client.close

  end


end
