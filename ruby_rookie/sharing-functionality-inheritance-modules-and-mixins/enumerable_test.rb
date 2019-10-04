require 'test/unit'
require_relative 'vowel_finder'
require_relative 'vowel_finder2'
require_relative 'array'

class EnumerableTest < Test::Unit::TestCase

  def test_1
    p VowelFinder.new('ciao ciao lulu').inject(:+)
  end

  def test_2
    p VowelFinder2.new('ciao ciao lulu').sum
    p VowelFinder2.new('ciao ciao lulu').sum2
  end

  def test_3
    p 'a'.scan(/[aeiou]/)
    p 'x'.scan(/[aeiou]/)
    p 'ako'.scan(/[aeiou]/)
    p 'ao'.scan(/[aeiou]/)
  end

  def test_4
    p [1 ,2, 3].sum
  end

  def test_5
   p VowelFinder2.new('ciao') == VowelFinder2.new('miao')
   p VowelFinder2.new('ciao') < VowelFinder2.new('aiao') # 3 vocali contro 4
   p VowelFinder2.new('iao') > VowelFinder2.new('o')
  end

end