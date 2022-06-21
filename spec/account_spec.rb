require 'account'

describe Account do
  it 'initializes a bank account with a balance' do
    expect(Account).to respond_to(:new).with(1).argument
  end

  describe '#show_balance' do
    it 'shows the balance' do
      account = Account.new(0.00)
      expect(account.show_balance).to eq(0.00)
    end
  end
  
  describe '#deposit' do
    it 'adds an amount of money to the client\'s balance' do
      account = Account.new(0)
      account.deposit(1000.00)
      expect(account.show_balance).to eq(1000.00)
    end
  end

  describe '#withdraw' do
    context 'when the balance is equal or more than the withdraw amount' do
      it 'abstracts an amount of money from the client\'s balance' do
        account = Account.new(0.00)
        account.deposit(1000.00)
        account.withdraw(500.00)
        expect(account.show_balance).to eq(500.00)
      end
    end
    context 'when the balance is less than the withdraw amount' do
      it 'raises an error' do
        account = Account.new(0.00)
        account.deposit(1000.00)
        expect { account.withdraw(1500.00) }.to raise_error("Cannot withdraw this amount. Try a lower one!")
      end
    end
  end

end