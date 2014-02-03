require 'test-unit'
require_relative '../checkout'
require_relative '../receipt'
require_relative '../categories'
require_relative '../import'
require_relative '../rounding'
require_relative 'fake_receipt'

class CheckoutTest < Test::Unit::TestCase

  def setup
    @receipt = FakeReceipt.new
    @checkout = Checkout.new Rounding.new, @receipt
  end

  def test_one_not_imported_product_without_tax
    @checkout.scan Book.new('book', 10.00)
    @checkout.receipt

    assert_receipt_values('book', '10.00', '0.00', '10.00')
  end

  def test_one_not_imported_product_with_tax
    @checkout.scan Cosmetic.new('bottle of perfume', 10.00)
    @checkout.receipt

    assert_receipt_values('bottle of perfume', '10.00', '1.00', '11.00')
  end

  def test_one_imported_product_without_tax
    @checkout.scan Import.new Book.new('book', 10.00)
    @checkout.receipt

    assert_receipt_values('book', '10.00', '0.50', '10.50')
  end

  def test_one_imported_product_with_tax
    @checkout.scan Import.new Cosmetic.new('bottle of perfume', 10.00)
    @checkout.receipt

    assert_receipt_values('bottle of perfume', '10.00', '1.50', '11.50')
  end

  def test_rounded_tax
    @checkout.scan Import.new Book.new('book', 10.07)
    @checkout.receipt

    assert_receipt_values('book', '10.07', '0.55', '10.62')
  end

  private

  def assert_receipt_values(description, price, taxes, total)
    assert_equal description, @receipt.description
    assert_equal price, @receipt.price
    assert_equal taxes, @receipt.taxes
    assert_equal total, @receipt.total
  end

end
