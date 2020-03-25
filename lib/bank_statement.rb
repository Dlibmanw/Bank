class BankStatement
  attr_reader :activities
  def initialize
    @activities = []
  end

  def add_activity(date, sum, balance)
    @activities.push("#{date} || #{sum} || || #{balance}")
  end

end