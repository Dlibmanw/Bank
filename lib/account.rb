class Account
  attr_reader :balance, :transactions
  def initialize(balance=0)
    @balance = balance
    @transactions = []
    @bank_statement = BankStatement.new(@transactions)
  end

  def show_balance
    @balance
  end

  def make_deposit(sum, type)
    create_transaction(sum, type)
    @balance += sum
  end

  def withdraw(sum, type)
    create_transaction(sum, type)
    @balance -= sum
  end

  def create_transaction(sum, type)
    @transactions << Transaction.new(sum, type)
  end

  def update_bank_statement(date, sum, balance)
    @bank_statement.add_activity(date, sum, balance)
  end

  def print_bank_statement
    @bank_statement.header
    @bank_statement.print
  end

end