class Transfer
  
  attr_accessor :sender, :status, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = reciever
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if self.sender.valid == true && self.receiver.valid == true
      true
    else false
    end
end
