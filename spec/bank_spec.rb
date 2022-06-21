require 'bank'

describe Bank do
  it 'initializes a bank account with a balance' do
    expect(Bank).to respond_to(:new).with(1).argument
  end
end