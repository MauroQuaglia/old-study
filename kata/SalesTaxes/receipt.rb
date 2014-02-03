class Receipt

  def initialize
    @receipt=''
  end

  def add(description, price)
    @receipt += "1 #{description} : #{price}\\n"
  end

  def print(taxes, total)
    @receipt += "Sales Taxes: #{taxes}\\n" + "Total: #{total}"
  end

end