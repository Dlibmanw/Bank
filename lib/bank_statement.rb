require 'date'

class BankStatement
  attr_reader :transactions
  def initialize(transactions = ["Date || Credit || Debit || Balance\n"])
    @transactions = transactions
  end

  def add_activity(sum, balance, type)
    if type == 'deposit'
      @transactions.push("#{Date.today.strftime('%d/%m/%Y')} || #{sum} || || #{balance}")
    else
      @transactions.push("#{Date.today.strftime('%d/%m/%Y')} || || #{sum} || #{balance}")
    end
  end

  def print
    @transactions.each { |transaction| puts transaction }
  end
end
