class BankAccount
  attr_accessor :status, :balance
  attr_reader :name

  def initialize(name)
    @name = name
    @balance = 1000
    @status = "open"
  end

  def deposit(value)
    self.balance += value
  end

  def display_balance
    @balance
  end

end
