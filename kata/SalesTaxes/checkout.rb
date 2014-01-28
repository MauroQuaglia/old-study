class Checkout

  def initialize
    @products=[]
  end

  def scan(product)
    @products.push(product)
  end

  def receipt
    taxes = '%.2f' % 0
    total = '%.2f' % 0

    receipt=''
    for product in @products
      receipt+=product.to_s + "\\n"
    end

    #inizialmente posso fare un ciclo per tutte poi vediamo(receipt, taxes, total)

    receipt += "Sales Taxes: #{taxes}\\n" + "Total: #{total}"
    receipt
  end

end