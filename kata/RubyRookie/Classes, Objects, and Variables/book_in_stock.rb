class BookInStock
  attr_reader :isbn, :price

  def initialize(isbn, price)
    @isbn = isbn #non accessibile dall'esterno
    @price = Float(price) #non accessibile dall'esterno
  end

  def to_s
    "ISBN: #{@isbn}, price: #{@price}"
  end

end