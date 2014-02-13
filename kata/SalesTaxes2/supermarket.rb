require_relative 'checkout'
require_relative 'rounding'
require_relative 'receipt'
require_relative 'product_factory'

class Supermarket

  def initialize
    @checkout = Checkout.new Rounding.new, Receipt.new
  end

  def checkout(shopper)
    shopper.goods.each { |good| @checkout.scan ProductFactory.new.create good }
  end

  def receipt
    @checkout.receipt
  end

end