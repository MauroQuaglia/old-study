class Product

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
    @rate == 0 ? @rate : @price / @rate
  end

end