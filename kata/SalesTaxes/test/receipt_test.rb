require 'test-unit'
require_relative '../receipt'

class ReceiptTest < Test::Unit::TestCase

  def test_formatting_receipt
    receipt = Receipt.new

    receipt.add('box of chocolates', 10.00)
    result = receipt.print(1.00, 11.00)

    assert_equal '1 box of chocolates: 10.00\nSales Taxes: 1.00\nTotal: 11.00', result
  end

end

