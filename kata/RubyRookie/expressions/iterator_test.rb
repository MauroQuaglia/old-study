require 'test/unit'
require_relative 'period'

class IteratorTest < Test::Unit::TestCase

  def test_1
    3.times { p 'A' }
    1.upto(3) { p 'B' }
    3.downto(1) { p 'C' }
    1.step(3, 1) { p 'D' }
    [1, 2].each { |x| p x }
  end

  def test_2
    File.open('numbers.txt').grep(/e$/) { |l| puts l }
  end

  def test_3
    loop do
      puts 'ciao'
      break
    end
  end

  def test_4
    a = [1, 2, 3]
    a.each { |v| puts v }
    for v in a
      puts v
    end
  end

  def test_5
    p = Period.new
    for genre in p
      puts genre
    end

    p.each { |g| puts g }
  end

  def test_6
    File.foreach('numbers.txt') do |line|
      line.strip!
      next if line == 'one'
      break if line == 'nine'
      redo if line.gsub!(/four/, 'ten') #se non c'è il match torna nil (false) e quindi non fa nulla
      puts line
    end
  end

  def test_7
    p 'cat'.gsub!(/cat/, 'dog')
    p 'xxx'.gsub!(/cat/, 'dog')
  end

  def test_8
    i = 0
    whl =
        while i < 3
          puts i
          i += 1
          break(i) if i == 2
        end
    puts "XXX#{whl}XXX"
  end

  def test_9
    a = 0
    while a < 3
      puts a
      i = 9
      a += 1
    end
    puts i
  end

  def test_10
    [1,2,3].each do |x|
      y = x + 1
    end
    puts [x,y]
  end

  def test_11
    x = 'ciao'
    y = 'miao'
    [1,2,3].each do |x|
      y = x + 1
    end
    puts [x,y]
  end

  def test_12
    x =
    [1,2,3].each do |x|
      x + 1
    end
    p x
  end
end