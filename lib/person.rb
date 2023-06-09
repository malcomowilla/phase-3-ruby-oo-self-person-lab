# # your code goes here
# require 'pry'



class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene
    def initialize(name, bank_account=25)
        @name = name
        @bank_account = bank_account
        @hygiene = 8
        @happiness = 8
    end


    def clean? 
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end
    


    def get_paid(amount)
        self.bank_account += amount 
    end

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        "♪ another one bites the dust ♫"


    end


    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"

    end
    

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    #    self.name = friend

    end


    

end

malcom = Person.new('Malcom')
dan = Person.new('Dan')
puts malcom.call_friend(dan)
puts malcom.name
# malcom.name
# puts malcom.bank_account = 1000
# puts malcom.happiness 
# puts malcom.get_paid(500)
# puts malcom.work_out












