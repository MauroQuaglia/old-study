class Receipt

  def initialize(decimals=2)
    @sensibility = "%.#{decimals}f"
    @receipt=''
  end

  def add(description, price)
    @receipt += "1 #{description}: #{value_for(price)}\\n"
  end

  def add_taxes(taxes)
    @receipt += "Sales Taxes: #{value_for(taxes)}\\n"
  end

  def add_total(total)
    @receipt += "Total: #{value_for(total)}"
  end

  def print
    @receipt
  end

  private

  def value_for(number)
    @sensibility % number
  end

end