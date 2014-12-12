require 'test-unit'
require_relative 'account'
require_relative 'transaction'

class TransactionTest < Test::Unit::TestCase

  def test_1
    a = Account.new(100)
    b = Account.new(200)

    puts a.balance
    puts b.balance

    t = Transaction.new(a, b)
    t.transfer(50)

    puts a.balance
    puts b.balance

    puts a.greater_balance_then? b
  end

end