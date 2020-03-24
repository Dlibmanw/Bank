require './lib/account.rb'

describe 'Account' do

  describe 'show_balance' do
    it 'returns a balance of zero for a new account' do
      account = Account.new
      expect(account.show_balance).to eq 0
    end
  end

  describe 'make deposit' do
    it 'allows a client to add money to an account' do
      account = Account.new 
      account.make_deposit(10, "deposit")
      expect(account.show_balance).to eq 10
    end
  end

  describe 'withdraw' do
    it 'allows a client to withdraw money from an account' do
      account = Account.new(15) 
      account.withdraw(5)
      expect(account.show_balance).to eq 10
    end
  end

end
