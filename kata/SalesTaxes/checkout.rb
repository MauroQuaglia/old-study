class Checkout

  def initialize(rounding, receipt)
    @rounding = rounding
    @receipt = receipt
    @total= 0
    @taxes=0
  end

  def scan(product)
    @taxes += @rounding.up(product.taxes)
    @total += total_price(product)

    @receipt.add(product.description, total_price(product))
  end

  def receipt
    @receipt.print @taxes, @total
  end

  private

  def total_price(product)
    product.price + @rounding.up(product.taxes)
  end

end
