class Human
    attr_accessor :health, :intelligence, :stealth, :health

    def initialize(strength=3, stealth=3, intelligence=3, health=100)
        puts "A new human!"
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = health
    end

    def attack(atackee)
        #decrease health of attacked object
        @atackee = atackee
        puts "I'm going to attack #{atackee}!"
        if atackee.class.ancestors.include?(Human)
            atackee.health -= 10
            true #what is the difference of returning true here?

        else
            false # and false here?
        end
    end
end

class Wizard < Human
    def initialize(health=50, intelligence=25)
        puts "I'm a new wizard!"
    end

    # HEAL

    def heal()
        puts "We're heaing!"
        health += 10
    end

    #FIREBALL

    def fireball(victim)
        puts "Casting a fireball!"
        victim.health -= 20
    end

end

class Ninja < Human
    def initialize(stealth=175)
        super
        puts "I'm a new ninja!"
    end

    def steal(victim)
        puts "I'm stealing!"
        puts victim.attack
        health += 10
    end

    def get_away
        puts "Run Away!"
        healh -= 15
    end
end

class Samurai < Human

    @@count = 0

    def initialize(health=200)
        super
        puts "I'm a new samurai!"
        @@count += 1
    end

    def death_blow(victim)
        puts "DEATH BLOW to #{victim}!!!"
        if victim.class.ancestors.include?(Human)
            victim.health = 0
            true
        else
            false
        # puts victim.attack
        # victim.health = 0
        end
    end

    def meditate
        puts "Time to meditate"
        @health = 200
    end

    # def how_many
    #     puts "how many samurai are there?"
    #     # Samurai.count_objects
    #     self.count
    #     @@count
    # end

    def self.count
        @@count
    end
end


# TESTING:

sam = Samurai.new
sam2 = Samurai.new
sam3 = Samurai.new
wiz = Wizard.new
puts sam.death_blow(wiz)

puts wiz.fireball(sam3).fireball(sam3)

puts Samurai.count


# FROM HUMAN:

# carl = Human.new
# sagan = Human.new
#
# puts carl.attack(sagan)
# puts sagan.attack(false)
# puts carl.attack("Not a Human")
