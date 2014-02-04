class Receipt

  def initialize(decimals=2)
    @sensibility = "%.#{decimals}f"
    @receipt=''
  end

  def add(description, price)
    @receipt += "1 #{description}: #{value_for(price)}\\n"
  end

  def print(taxes, total)
    @receipt += "Sales Taxes: #{value_for(taxes)}\\n" + "Total: #{value_for(total)}"
  end

  private

  def value_for(number)
    @sensibility % number
  end

end