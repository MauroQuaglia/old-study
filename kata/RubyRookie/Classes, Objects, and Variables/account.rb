class Account
  attr_reader :balance
  public :balance # l'accessor balance è protetto. E' disponibile solo all'interno della classe Account

  def initialize(balance)
    @balance = balance
  end

  def greater_balance_then?(other)
    @balance > other.balance
  end

end