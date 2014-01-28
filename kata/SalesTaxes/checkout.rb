class Checkout


  def initialize
    @taxes = 0
    @total = 0
  end

  def scan(product)
  end

  def receipt
    taxes = '%.2f' % @taxes
    total = '%.2f' % @total

    "Sales Taxes: #{taxes}\\nTotal: #{total}"
  end

end