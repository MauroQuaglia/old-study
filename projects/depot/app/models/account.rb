class Account < ActiveRecord::Base
  validates(:balance, :numericality => {greater_than_or_equal_to: 0})

  def withdraw(amount)
    adjust_balance!(-amount)
  end

  def deposit(amount)
    adjust_balance!(amount)
  end

  private

  def adjust_balance!(amount)
    self.balance += amount
    save! # Occhio che se non mando l'eccezione la transazione non fallisce!!!
  end

end