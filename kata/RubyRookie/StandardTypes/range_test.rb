require 'test/unit'

class MyNumber
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def succ
    MyNumber.new(@value + 1)
  end

  def <=>(other)
    self.value <=> other.value
  end

end


class RangeTest < Test::Unit::TestCase

  def test_1
    p (1..10).to_a
    p (1...10).to_a
    p ('a'..'z').to_a

    p ('bar'..'bat').to_a
    enum = ('bar'..'bat').to_enum
    p enum.next
    p enum.next
    p enum.next
  end

  def test_2
    a = 1..10
    p a.class
    p a.max
    p a.include?(5)
  end

  def test_3
    a = MyNumber.new(1)
    b = MyNumber.new(10)

    p (a..b).to_a
  end

  def test_4
    file = File.open('/home/xpuser/studio/mauro-quaglia/studio/kata/RubyRookie/StandardTypes/prova.csv')
    while line = file.gets
      puts line if line =~ /start/ .. line =~ /end/
    end
  end

end








