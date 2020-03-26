class Account
  attr_reader :balance, :transactions, :bank_statement
  def initialize(balance=0)
    @balance = balance
    @transactions = ["Date || Credit || Debit || Balance\n"]
    @bank_statement = BankStatement.new(@transactions)
  end

  def make_deposit(sum, type)
    @balance += sum
    update_bank_statement(sum, @balance, type)
  end

  def withdraw(sum, type)
    @balance -= sum
    update_bank_statement(sum, @balance, type)
  end

  def update_bank_statement(sum, balance, type)
    @bank_statement.add_activity(sum, balance, type)
  end
  
  def print_bank_statement
    @bank_statement.print
  end
end