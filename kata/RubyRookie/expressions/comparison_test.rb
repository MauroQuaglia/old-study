require 'test/unit'

class ComparisonTest < Test::Unit::TestCase

  def test_1
    p nil && 99 # nil
    p true && 99 # 99
  end

  def test_2
    p nil || 99 #99
    p 'ciao' || nil # ciao
  end

  def test_3
    var1 = 'io'
    var1 ||= 'tu' # assegna solo se var non è ancora assegnata
    puts var1
  end

  def test_4
    var2 = nil
    var2 ||= 'default'
    puts var2
  end

  def test_5
    p defined? 1
    p defined? x
    p defined? String
    p defined? String.new
    p defined? $?
  end

end