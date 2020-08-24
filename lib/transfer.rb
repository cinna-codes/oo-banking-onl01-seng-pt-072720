class Transfer
  attr_accessor :sender, :receiver, :transfer_amount, :status

  def initialize(sender, receiver, transfer_amount)
    @sender = sender
    @receiver = receiver
    @status = "pending"
    @transfer_amount = transfer_amount
  end

  def valid?
    @sender.valid? && @receiver.valid?
  end

  def execute_transaction
    self.valid? && status == "pending"
    self.sender.balance -= @transfer_amount
    self.receiver.balance(@transfer_amount)
    self.status = "closed"
  end

  def reverse_transfer

  end

end
