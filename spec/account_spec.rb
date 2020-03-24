require './lib/account.rb'

describe 'Account' do
  describe 'creat_account' do
    it 'allows you to create a new account with a balance of zero' do
      account = Account.new
      expect(account.show_balance).to eq 0
    end
  end

  describe 'make deposit' do
    it 'allows a client to add money to an account' do
      account = Account.new 
      account.make_deposit(10)
      expect(account.show_balance).to eq 10
    end
  end

end
