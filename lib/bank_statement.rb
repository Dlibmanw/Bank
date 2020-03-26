require 'date'
class BankStatement

  attr_reader :activities

  def initialize(activities=["Date || Credit || Debit || Balance\n"])
    @activities = activities
  end

  def add_activity(sum, balance, type)
    if type == 'deposit' 
      @activities.push("#{Date.today.strftime("%d/%m/%Y")} || #{sum} || || #{balance}")
    else
      @activities.push("#{Date.today.strftime("%d/%m/%Y")} || || #{sum} || #{balance}")
    end
  end

  def print
    @activities.each { |transaction| puts transaction }
  end

end