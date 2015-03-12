require 'test-unit'
require_relative 'book_in_stock'

class BookInStockTest < Test::Unit::TestCase

  def test_1
    p BookInStock.new 'isbn1', 3
    p BookInStock.new 'isbn2', 3.14
    p BookInStock.new 'isbn3', '5.67'

    puts BookInStock.new 'isbn3', '5.67' #il puts chiama il metodo to_s
  end

  def test_2
    b = BookInStock.new 'isbn', 33.80
    p b.isbn

    p b.price
    p b.price_in_cents
    b.price = b.price * 0.75 # ho usato il setter. Prima dell'aggiustamento avevo 25.349999999999998
    p b.price
    p b.price_in_cents
    p b.xxx
  end

  def test_3
    a = BookInStock.new '', 10
    p a.type_of_price

    b = BookInStock.new '', 10.1
    p b.type_of_price
  end

  def test_4
    puts (100).class
    puts (100.0).class
    puts (100*100.0).class
    puts (100.0*100).class
    puts (100/100.0).class
    puts (100.0/100).class
  end

  def test_5
    b = BookInStock.new '', 100
    puts b.price
    puts b.price_in_cents

    b.price = 500
    puts b.price
    puts b.price_in_cents

    b.price_in_cents = 700
    puts b.price
    puts b.price_in_cents
  end

end