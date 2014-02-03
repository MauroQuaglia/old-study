require 'test-unit'
require_relative '../receipt'
require_relative '../checkout'
require_relative '../categories'
require_relative '../import'

class CheckoutAcceptanceTest < Test::Unit::TestCase

  def setup
    @checkout = Checkout.new Rounding.new, Receipt.new
  end

  def test_mixed_products_1
    @checkout.scan Book.new('book', 12.49)
    @checkout.scan Music.new('music CD', 14.99)
    @checkout.scan Food.new('chocolate bar', 0.85)

    assert_equal '', @checkout.receipt
  end


end

