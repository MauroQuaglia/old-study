require_relative 'rounding'

class Checkout

  def initialize(decimals = 2, rounding, receipt)
    @sensibility = "%.#{decimals}f"
    @rounding = rounding
    @receipt = receipt
    @total= 0
    @taxes=0
  end

  def scan(product)
    @taxes += @rounding.up product.taxes
    @total += product.price + @taxes

    @receipt.add(product.description, value_for(product.price))
  end

  def receipt
    @receipt.print value_for(@taxes), value_for(@total)
  end

  private

  def value_for(number)
    @sensibility % number
  end

end
