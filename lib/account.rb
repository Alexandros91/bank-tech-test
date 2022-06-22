require 'date'

class Account

  def initialize(balance)
    @balance = balance
    @transactions = []
  end

  def show_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    @transactions.push([credit: nil, debit: amount, balance: @balance])
    return amount
  end

  def withdraw(amount)
    error_message if amount > @balance 
    @balance -= amount
    @transactions.push([credit: amount, debit: nil, balance: @balance])
    return amount
  end

  def print_message
    each_transaction = @transactions.each do
      |transaction| puts transaction
    end
    return "#{header} #{each_transaction}"
  end

  private

  def error_message
    raise "Cannot withdraw this amount. Try a lower one!" 
  end

  def header
    "credit || debit || balance"
  end
end
