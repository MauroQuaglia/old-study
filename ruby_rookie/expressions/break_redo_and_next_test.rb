require 'test/unit'

class BreakRedoAndNextTest < Test::Unit::TestCase

  def test_1
    File.foreach('numbers.txt') do |line|
      line.strip!
      next if line == 'one'
      break if line == 'nine'
      redo if line.gsub!(/four/, 'ten') #se non c'è il match torna nil (false) e quindi non fa nulla
      puts line
    end
  end

  def test_2
    i = 0
    loop do
      i += 1
      next if i < 3
      p i
      break if i > 4 # esce e non rientra più.
    end
  end

  def test_3
    a = 0
    value = while a < 3
              break(a) if a == 2
              a += 1
            end

    puts value
  end

end
