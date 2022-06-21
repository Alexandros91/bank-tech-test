require 'bank'

describe Bank do
  it 'initializes a bank account with a balance' do
    expect(Bank).to respond_to(:new).with(1).argument
  end

  describe '#show_balance' do
    it 'shows the balance' do
      bank = Bank.new(0)
      expect(bank.show_balance).to eq(0)
    end
  end
end