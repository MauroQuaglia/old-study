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
  end

  def test_2
    a = Account2.new(100)
    b = Account2.new(200)

    # non funziona a causa del protected
    #puts a.balance

    t = Transaction2.new(a, b)
    puts t.greater # funziona perché qui il protected viene usato correttamente
  end

end