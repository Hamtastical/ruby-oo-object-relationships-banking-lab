require "pry"

class BankAccount

    attr_accessor :balance, :status
    attr_reader :name

    def initialize(name) #initialize with a name
        @name = name
        @balance = 1000
        @status = "open"
    end

    def name
        @name
    end

    def deposit(amount) # Me.deposit(1000) = bal  is 2000

        self.balance += amount #balance amount gets deposited
        
    end

    def display_balance #display balance of self

        "Your balance is $#{self.balance}."
    end




    def valid? #valid? will ask if it is true or not (conditional used)

         if self.status == "open" && self.balance > 0  #status is open and balance is greater than 0, it is true
            true

         else
            false
         end
    end

    def close_account

        self.status = "closed" #status of the account is closed

    end

end
