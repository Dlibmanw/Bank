require './lib/transaction.rb'

describe 'Transaction' do

    it 'allows a user to create a new transaction' do
      transaction = Transaction.new(150, "deposit")
      expect(transaction.sum).to eq 150
      expect(transaction.type).to eq "deposit"
      expect(transaction.date).to eq Date.today
    end
    
end