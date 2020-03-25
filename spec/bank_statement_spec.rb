require './lib/bank_statement.rb'
require './lib/transaction.rb'

describe 'BankStatement' do
  describe 'add_activity' do
    it 'returns a list of account activities' do
      account = Account.new
      transaction = Transaction.new(200, "deposit")
      bank_statment = BankStatement.new
      expect(bank_statment.add_activity(Date.today, 200, 200)).to eq ["#{Date.today} || 200 || || 200"] 
    end
  end
end