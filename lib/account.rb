class Account
  attr_reader :balance
  def initialize(balance=0)
    @balance = balance
  end

  def show_balance
    @balance
  end

  def make_deposit(sum, type)
    transaction = Transaction.new(sum, type)
    bankstatement = BankStatement.new
    @balance = @balance + transaction.sum
    bankstatement.add_activity(Date.today, sum, @balance)
  end

  def withdraw(sum, type)
    transaction = Transaction.new(sum, type)
    @balance = @balance - transaction.sum
  end

end