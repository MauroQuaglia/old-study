require 'test-unit'
require_relative 'book_in_stock'

class BookInStockTest < Test::Unit::TestCase

  def test_1
    b1 = BookInStock.new 'isbn1', 3
    p b1
    b2 = BookInStock.new 'isbn2', 3.14
    p b2
    b3 = BookInStock.new 'isbn3', '5.67'
    p b3
    puts b3 #il puts chiama il metodo to_s
  end

  def test_2
    b = BookInStock.new 'isbn', 100.0
    p b.price
    p b.isbn
  end

end