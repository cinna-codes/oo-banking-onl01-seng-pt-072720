class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
    if @status = "pending"
      return true
    else
      return false
    end
  end

  def execute_transaction
    self.valid? && status == "pending"
    @sender.balance -= @amount
    @receiver.balance += (@amount)
    @status = "complete"

  end

  def reverse_transfer

  end

end
