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
    @transactions.push([credit: amount, debit: nil, balance: @balance])
    amount
  end

  def withdraw(amount)
    error_message if amount > @balance 
    @balance -= amount
    @transactions.push([credit: nil, debit: amount, balance: @balance])
    amount
  end

  def print_statement
    return "#{header} #{print_each_transaction}"
  end

  private

  def error_message
    raise 'Cannot withdraw this amount. Try a lower one!'
  end

  def header
    puts '   credit   ||   debit   ||   balance   '
    return '   credit   ||   debit   ||   balance   '
  end

  def print_each_transaction
    each_transaction = @transactions.reverse.each do
    |transaction| puts transaction
    end
  end
end
