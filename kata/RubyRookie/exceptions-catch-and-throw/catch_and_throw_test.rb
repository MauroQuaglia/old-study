require 'test/unit'

class CatchAndThrowTest < Test::Unit::TestCase

  def test_1
    catch(:done) do
      File.foreach('numbers.txt') do |line|
        throw :done if line.chomp! == '9'
        p line
      end
      puts 'Fine del blocco catch.'
    end
  end

  def test_2
    value = catch(:done) do
      File.foreach('numbers.txt') do |line|
        throw :done, 'done-executed' if line.chomp! == '4'
        p line
      end
      puts 'Fine del blocco catch.'
    end
    p value
  end

  catch :nok do
    puts '!nok!'
  end

  def test_3
    5.times do |n|
      puts n
      throw :nok if n == 3
    end
  end

end
