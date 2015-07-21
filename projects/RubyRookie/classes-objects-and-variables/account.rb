class Account
  attr_accessor :balance

  def initialize(balance)
    @balance = balance
  end

end

class Account2
  attr_reader :balance
  protected :balance # disponibile solo nella classe account2 o classe derivata

  def initialize(balance)
    @balance = balance
  end

  def greater_balance_then?(other)
    @balance > other.balance
  end

end