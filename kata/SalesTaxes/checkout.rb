class Checkout

  def initialize
    @products=[]
  end

  def scan(product)
    @products.push(product)
  end

  def receipt
    return '' if @products.empty?

    receipt=''
    total=0

    product = @products[0]

    receipt+=product.to_s + "\\n"

    total+=product.cost

    receipt += "Sales Taxes: #{'%.2f' % product.taxes}\\n" + "Total: #{'%.2f' % total}"
    receipt
  end

end