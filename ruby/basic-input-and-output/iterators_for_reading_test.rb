require 'test/unit'

class IteratorsForReadingTest < Test::Unit::TestCase

  def test_1
    File.open('my-file.txt') do |file|
      file.each_byte do |chr|
        p "#{chr.chr}: #{chr}"
      end
    end
  end

  def test_2
    File.open('my-file.txt') do |file|
      file.each_line do |line|
        p line.dump
      end
    end
  end

  def test_3
    File.open('my-file.txt') do |file|
      file.each_line('l') do |line|
        p line
      end
    end
  end

  def test_4
    IO.foreach('my-file.txt') {|line| p line} # anche File
  end

  def test_5
    str = IO.read('my-file.txt') # anche File.read
    p str
    p str.length
    p str.class
  end

  def test_6
    arr = IO.readlines('my-file.txt') # anche File.readlines
    p arr
    p arr.length
    p arr.class
  end

end
