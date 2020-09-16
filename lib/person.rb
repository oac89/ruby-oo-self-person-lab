
class Person
    attr_accessor :happiness, :bank_account, :hygiene 
    attr_reader :name 

    def initialize (name)
        @name = name 
        @bank_account = 25 
        @happiness = 8
        @hygiene = 8 

    end 

    def happiness=(points)
        @happiness = points 
        if @happiness > 10 
            @happiness = 10
        elsif @happiness < 0 
            @happiness = 0
        end
    end
    
    def hygiene=(points)
        @hygiene = points 
        if @hygiene > 10
            @hygiene = 10
        elsif @hygiene < 0
            @hygiene = 0
        end
    end

    def get_paid(salary)
        self.bank_account += salary 
        p "all about the benjamins"
    end

    def happy?
        @happiness > 7
    end

    def clean? 
        @hygiene > 7
    end

    def take_bath
        self.hygiene += 4
        p "♪ Rub-a-dub just relaxing in the tub ♫"
    end 

    def work_out
        self.happiness += 2
        self.hygiene -= 3
        p "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
          self.happiness -= 2
          person.happiness -= 2
          return "blah blah partisan blah lobbyist"
        end
       if topic == "weather"
        self.happiness += 1
        person.happiness += 1
        return "blah blah sun blah rain"
       end 
        
        if topic == "not politics" || "weather"
            return "blah blah blah blah blah"
        end
    end

end



    

