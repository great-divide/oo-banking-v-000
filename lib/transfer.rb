class Transfer
  
  attr_accessor :sender, :status
  
  def initialize(sender)
    @sender = sender
    @status = "pending"
  end
end
