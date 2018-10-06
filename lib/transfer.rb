class Transfer
  
  attr_accessor :sender, :status, :receiver
  
  def initialize(sender, receiver)
    @sender = sender
    @receiver = reciever
    @status = "pending"
  end
end
