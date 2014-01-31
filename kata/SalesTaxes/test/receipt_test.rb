require 'test-unit'
require_relative '../receipt'
require_relative '../categories'
require_relative '../import'

class ReceiptTest < Test::Unit::TestCase

  def setup
    @receipt = Receipt.new
  end

  def test_receipt_empty_when_no_products
    assert_equal 'Sales Taxes: 0.00\\nTotal: 0.00', @receipt.print
  end

  def test_one_not_imported_product_without_tax
    @receipt.enter Book.new('book', 10.00)

    assert_equal '1 book : 10.00\nSales Taxes: 0.00\nTotal: 10.00', @receipt.print
  end

  def test_one_not_imported_product_with_tax
    @receipt.enter Cosmetic.new('bottle of perfume', 10.00)

    assert_equal '1 bottle of perfume : 10.00\nSales Taxes: 1.00\nTotal: 11.00', @receipt.print
  end

  def test_one_imported_product_without_tax
    @receipt.enter Import.new Book.new('book', 10.00)

    assert_equal '1 book : 10.00\nSales Taxes: 0.50\nTotal: 10.50', @receipt.print
  end

  def test_one_imported_product_with_tax
    @receipt.enter Import.new Cosmetic.new('bottle of perfume', 10.00)

    assert_equal '1 bottle of perfume : 10.00\nSales Taxes: 1.50\nTotal: 11.50', @receipt.print
  end



  def test_prova

  end

end