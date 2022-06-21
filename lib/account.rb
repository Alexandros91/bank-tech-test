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
    @transactions.push([amount, @balance])
    return amount
  end

  def withdraw(amount)
    raise "Cannot withdraw this amount. Try a lower one!" if amount > @balance
    @balance -= amount
    @transactions.push([amount, @balance])
    return amount
  end

end
