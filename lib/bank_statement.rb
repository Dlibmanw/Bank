class BankStatement

  attr_reader :activities

  def initialize(activities = ["Date || Credit || Debit || Balance\n"])
    @activities = activities
  end

  def add_activity(date, sum, balance)
    @activities.push("#{date} || #{sum} || || #{balance}")
  end

  def print
    @activities.each { |transaction| puts transaction }
  end

end