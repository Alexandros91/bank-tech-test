class Bank

  def initialize(balance)
    @balance = balance
  end

  def show_balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    @balance -= amount
  end
end
