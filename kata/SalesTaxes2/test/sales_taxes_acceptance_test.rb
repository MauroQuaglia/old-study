require 'test-unit'
require_relative '../supermarket'
require_relative '../shopper'

class SalesTaxesAcceptanceTest < Test::Unit::TestCase

  def test_one_not_imported_product_without_tax
    supermarket = Supermarket.new

    shopping_list='1 book at 10.00'
    shopper=Shopper.new(shopping_list)

    supermarket.checkout(shopper)

    assert_equal '1 book: 10.00\nSales Taxes: 0.00\nTotal: 10.00\n', supermarket.receipt
  end

  def test_one_not_imported_product_with_tax
    supermarket = Supermarket.new

    shopping_list='1 bottle of perfume at 10.00'
    shopper=Shopper.new(shopping_list)

    supermarket.checkout(shopper)

    assert_equal '1 bottle of perfume: 18.49\n1 music CD: 16.49\nSales Taxes: 1.50\nTotal: 28.98\n', supermarket.receipt
  end
end
