class Transfer
  
  attr_accessor :sender, :status, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if self.sender.valid? == true && self.receiver.valid? == true
      true
    else false
    end
  end
  
  def execute_transaction
    if self.status == "pending" && self.valid? == true
      self.sender.balance = self.sender.balance - self.amount
      self.receiver.balance = self.receiver.balance + self.amount
      self.status = "complete"
    else "Transaction rejected. Please check your account balance."
    end
  end
    
  def reverse_transfer
    if self.status == "complete"
      self.sender.balance + self.amount
      self.receiver.balance - self.amount
      self.status = "reversed"
    end
  end
    
end
