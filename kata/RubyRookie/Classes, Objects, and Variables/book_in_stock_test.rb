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
    b = BookInStock.new 'isbn', 33.80
    p b.isbn

    p b.price
    p b.price_in_cents
    b.price = b.price * 0.75 # ho usato il setter. Prima dell'aggiustamento avevo 25.349999999999998
    p b.price
    p b.price_in_cents
  end

  def test_3
    a = BookInStock.new '', 10
    p a.type_of_price

    b = BookInStock.new '', 10.1
    p b.type_of_price
  end


end