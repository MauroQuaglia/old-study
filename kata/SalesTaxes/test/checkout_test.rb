require 'test-unit'
require_relative '../checkout'
require_relative '../product'

class CheckoutTest < Test::Unit::TestCase

  def test_receipt_empty_when_no_products
    checkout = Checkout.new

    assert_equal 'Sales Taxes: 0.00\nTotal: 0.00', checkout.receipt
  end

  def test_one_not_imported_product_without_tax
    checkout = Checkout.new
    checkout.scan Product.new(Book.new)

    assert_equal '1 book : 12.49\nSales Taxes: 0.00\nTotal: 0.00', checkout.receipt
  end

  def test_prova

  end

end