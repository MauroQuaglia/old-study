require 'test/unit'

class KeywordTest < Test::Unit::TestCase
  def test_1
    my_hash(:title, {a: 'ciao', b: 'miao'})
    my_hash(:title, a: 'ciao', b: 'miao')
  end

  def my_hash(search, params)
    puts search.class
    puts params.class
  end
end


