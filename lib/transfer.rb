require "pry"

class Transfer

  attr_accessor :status
  attr_reader :amount, :sender, :receiver

  def initialize(sender, receiver, amount) #it is sender, reciever and the amount ina rguments because those are the ones that will be entered for future methods
    @sender = sender
    @receiver = receiver
    @status = "pending" #this method can be changed later
    @amount = amount
  end

  def amount
    @amount
  end

  def valid?

    #can call upon method itself to check
      if self.sender.valid? == true  && self.receiver.valid? == true #if the sender and reciever is valid and == true, then true
        true

      else #else it is false
        false
    end
  end

  def execute_transaction #amanda.transfer(200) = amanda.balance = 950
    if 
    self.status == "pending" && self.sender.valid? == true && self.sender.balance >= self.amount #to make a transaction happen once, we can use if/else (if it can transfer, then transfer, if not then reject)
    self.sender.balance -= self.amount #the sender will minus from the account
    self.receiver.balance += self.amount #the reciever willa dd to the account (money recieved)
    self.status = "complete" #status is complete

    else
      self.status == "pending" && self.sender.valid? == false || self.sender.balance < self.amount
      self.status = "rejected"
      "Transaction rejected. Please check your account balance."
      
    end
  end

def reverse_transfer
  if execute_transaction && self.status = "complete"
  self.receiver.balance -= self.amount
  self.sender.balance += self.amount
  self.status = "reversed"
  end

end
  
end
