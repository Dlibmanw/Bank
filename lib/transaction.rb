require 'date'
class Transaction

    attr_reader :sum, :type, :date

  def initialize(sum, type)
    @sum = sum
    @type = type
    @date = Date.today
  end
end