require 'test-unit'
require_relative '../checkout'
require_relative '../categories'

class CheckoutTest < Test::Unit::TestCase

  def setup
    @checkout = Checkout.new
  end

  def test_receipt_empty_when_no_products
    assert_equal '', @checkout.receipt
  end

  def test_one_not_imported_product_without_tax
    @checkout.scan Book.new('book', 12.49)

    assert_equal '1 book : 12.49\nSales Taxes: 0.00\nTotal: 12.49', @checkout.receipt
  end

  def test_one_not_imported_product_with_tax
    @checkout.scan Cosmetic.new('bottle of perfume', 54.65)

    assert_equal '1 bottle of perfume : 54.65\nSales Taxes: 5.46\nTotal: 60.11', @checkout.receipt
  end

  def test_one_imported_product_without_tax
    # una cosa di questo tipo
    @checkout.scan Imported.new Book.new('book', 12.49)

    assert_equal '1 book : 12.49\nSales Taxes: 0.00\nTotal: 12.49', @checkout.receipt
  end


  def test_prova

  end

end