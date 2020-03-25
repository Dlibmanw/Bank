require './lib/bank_statement.rb'
require './lib/transaction.rb'

describe 'BankStatement' do
  describe '#add_activity' do
    it 'returns a list of account activities' do
      account = Account.new
      transaction = Transaction.new(200, "deposit")
      bank_statment = BankStatement.new
      bank_statment.add_activity(Date.today.strftime("%d/%m/%Y"), 200, 200)
      expect(bank_statment.activities).to include "#{Date.today.strftime("%d/%m/%Y")} || 200 || || 200"
    end
  end
  describe '#print' do
    it 'returns a statement that has a header and a list of transaction' do
      bank_statment = BankStatement.new
      bank_statment.add_activity(Date.today.strftime("%d/%m/%Y"), 400, 400)
      bank_statment.add_activity(Date.today.strftime("%d/%m/%Y"), 100, 500)
      
      expect(bank_statment.print).to include ("Date || Credit || Debit || Balance\n")
      expect(bank_statment.print).to include ("#{Date.today.strftime("%d/%m/%Y")} || 400 || || 400")
      expect(bank_statment.print).to include ("#{Date.today.strftime("%d/%m/%Y")} || 100 || || 500")
    end
  end
end