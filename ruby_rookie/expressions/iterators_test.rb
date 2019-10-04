require 'test/unit'

class IteratorsTest < Test::Unit::TestCase

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
    # for..in e each agiscono nello stesso modo.
    p = Period.new
    for genre in p
      puts genre
    end

    p.each { |g| puts g }
  end

end

class Period

  def each
    yield 'Classic'
    yield 'Jazz'
    yield 'Pop'
  end

end
