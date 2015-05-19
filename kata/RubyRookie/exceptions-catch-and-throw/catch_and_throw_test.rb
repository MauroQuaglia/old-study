require 'test/unit'

class MyTest < Test::Unit::TestCase

  def test_1
    catch(:done) do
      File.foreach('words.txt') do |line|
        throw :done if line.chomp! == 'egli'
        p line
      end
      puts 'ciao'
    end
  end

  def test_2
    value = catch(:done) do
      File.foreach('words.txt') do |line|
        throw :done, 'done-executed' if line.chomp! == 'egli'
        p line
      end
      p 'ciao'
    end
    p value
  end

end
