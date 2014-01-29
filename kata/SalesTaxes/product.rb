class Product
  attr_reader :price

  def initialize(description, price, rate)
    @description = description
    @price = price
    @rate = rate
  end

  def cost
    @price + taxes
  end

  def to_s
    "1 #{@description} : #{@price}"
  end

  def taxes
    @rate == 0 ? @rate : (@price * @rate) / 100
  end

end