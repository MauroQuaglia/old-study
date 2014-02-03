require 'test-unit'
require_relative '../receipt'

class ReceiptTest < Test::Unit::TestCase

  def test_formatting_receipt
    receipt = Receipt.new

    receipt.add('Description', 'Price')

    assert_equal '1 Description : Price\nSales Taxes: Taxes\nTotal: Total', receipt.print('Taxes', 'Total')
  end

end

