require_relative 'transaction'

class Account
  attr_reader :balance
  def initialize()
    @balance = 0
    @transactions = []
  end

  def deposit(amount)
    transaction = []
    @balance += amount
    transaction.push(Time.now.to_s[0...10])
    transaction.push(amount)
    transaction.push('')
    transaction.push(@balance)
  end

  def withdraw(amount)
    raise 'insufficient funds' if @balance < amount
    @balance -= amount
  end
end
