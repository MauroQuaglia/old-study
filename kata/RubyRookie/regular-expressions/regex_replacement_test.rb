require 'test/unit'

class RegexReplacementTest < Test::Unit::TestCase

  def test_1
    s = 'dog and yyy-cat-xxx-cat-zzz'
    p s.sub(/cat/, 'MQ')
    p s.gsub(/cat/, 'MQ')
    p s
  end

  def test_2
    s = 'dog and yyy-cat-xxx-cat-zzz'
    s.gsub(/cat/, 'MQ')
    p s
    s.gsub!(/cat/, 'MQ')
    p s
  end

  def test_3
    s = 'dog'
    p s.gsub(/cat/, 'MQ') # non matcha e torna la stringa originaria
    p s
  end

  def test_4
    s = 'dog'
    p s.gsub!(/cat/, 'MQ') #non matcha e torna nil
    p s
  end

end