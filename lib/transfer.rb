class Transfer
  attr_accessor :sender, :receiver, :amount, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @amount = transfer_amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    self.valid? && status == "pending"
    @sender.balance -= @transfer_amount
    @receiver.balance(@transfer_amount)
    @status = "closed"
  end

  def reverse_transfer

  end

end
