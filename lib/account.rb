require_relative 'transaction'

class Account
  attr_reader :balance
  def initialize()
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    raise 'insufficient funds' if @balance < amount
    @balance -= amount
  end
end
