class Transfer
  
  attr_accessor :sender, :status, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = reciever
    @amount = amount
    @status = "pending"
  end
end
