require './lib/transaction.rb'

describe 'Transaction' do

  describe 'create' do
    it 'allows a user to create a new transaction' do
      transaction = Transaction.new(150, "deposit")
      expect(transaction.create).to eq({:sum => 150, :type => "deposit", :time => Date.today})
    end
  end
end