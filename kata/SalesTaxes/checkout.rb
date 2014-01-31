require_relative 'rounded'

class Checkout

  def initialize(decimals = 2)
    @receipt = ''
    @total= 0
    @taxes=0
    @sensibility = "%.#{decimals}f"
  end

  def scan(product)
    @receipt += "1 #{product.description} : #{value_for(product.price)}\\n"
    @taxes += Rounded.new.up product.taxes
    @total += product.price + @taxes

  end

  def receipt
    @receipt += "Sales Taxes: #{value_for(@taxes)}\\n" + "Total: #{value_for(@total)}"
  end

  private

  def value_for(number)
    @sensibility % number
  end

end