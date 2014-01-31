require 'test-unit'
require_relative '../checkout'
require_relative '../categories'
require_relative '../import'

class CheckoutTest < Test::Unit::TestCase

  def setup
    @receipt = Checkout.new
  end

  def test_receipt_empty_when_no_products
    assert_equal 'Sales Taxes: 0.00\\nTotal: 0.00', @receipt.receipt
  end

  def test_one_not_imported_product_without_tax
    @receipt.scan Book.new('book', 10.00)

    assert_equal '1 book : 10.00\nSales Taxes: 0.00\nTotal: 10.00', @receipt.receipt
  end

  def test_one_not_imported_product_with_tax
    @receipt.scan Cosmetic.new('bottle of perfume', 10.00)

    assert_equal '1 bottle of perfume : 10.00\nSales Taxes: 1.00\nTotal: 11.00', @receipt.receipt
  end

  def test_one_imported_product_without_tax
    @receipt.scan Import.new Book.new('book', 10.00)

    assert_equal '1 book : 10.00\nSales Taxes: 0.50\nTotal: 10.50', @receipt.receipt
  end

  def test_one_imported_product_with_tax
    @receipt.scan Import.new Cosmetic.new('bottle of perfume', 10.00)

    assert_equal '1 bottle of perfume : 10.00\nSales Taxes: 1.50\nTotal: 11.50', @receipt.receipt
  end

  def test_rouded_tax
    @receipt.scan Import.new Book.new('book', 10.07)

    assert_equal '1 book : 10.07\nSales Taxes: 0.55\nTotal: 10.62', @receipt.receipt
  end


end

