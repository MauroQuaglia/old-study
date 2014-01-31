class Receipt

  def initialize(decimals = 2)
    @receipt = ''
    @total= 0
    @taxes=0
    @sensibility = "%.#{decimals}f"
  end

  def enter(product)
    @receipt += "1 #{product.description} : #{value_for(product.price)}"
    @receipt += "\\n"
    @total += product.cost
    @taxes += product.taxes
  end

  def print
    @receipt += "Sales Taxes: #{value_for(@taxes)}\\n" + "Total: #{value_for(@total)}"
  end

  private

  def value_for(number)
    @sensibility % number
  end

end