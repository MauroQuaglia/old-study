require 'test-unit'
require_relative '../checkout'
require_relative '../product'
require_relative '../category/book'

class CheckoutTest < Test::Unit::TestCase

  def setup
    @checkout = Checkout.new
  end

  def test_receipt_empty_when_no_products
    assert_equal 'Sales Taxes: 0.00\nTotal: 0.00', @checkout.receipt
  end

  # da correggere... mi sono dimenticato il totale
  def test_one_not_imported_product_without_tax
    @checkout.scan Product.new(Book.new, 'book', 12.49)

    assert_equal '1 book : 12.49\nSales Taxes: 0.00\nTotal: 0.00', @checkout.receipt
  end

  def test_one_not_imported_product_with_tax
    @checkout.scan Product.new(Cosmetics.new, 'bottle of perfume', 18.99)

    assert_equal '1 bottle of perfume : 18.99\nSales Taxes: 1.899\nTotal: 20.889', @checkout.receipt
  end

  def test_prova

  end

end