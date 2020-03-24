class Transaction

  def initialize(sum, type)
    @sum = sum
    @type = type
    @time = Date.today
  end

  def create
    {:sum => @sum, :type => @type, :time => Date.today}
  end

end