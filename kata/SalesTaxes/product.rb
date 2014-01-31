class Product
  attr_reader :description, :price

  def initialize(description, price, rate)
    @description = description
    @price = price
    @rate = rate
  end

  def cost
    @price + taxes
  end

  def taxes
    @price * @rate / 100
  end

end