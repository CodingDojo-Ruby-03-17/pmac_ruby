require_relative 'mammal'
class Lion < Mammal

    def initialize health=170
        super health
        puts "It's a new Lion!"
        puts health
        self
    end

    def fly
        puts "We're flying!"
        @health -= 10
        puts health
        self
    end

    def attack_town
        puts "We're attacking!"
        @health -= 50
        puts health
        self
    end

    def eat_humans
        puts "Yummy, humans!"
        @health += 20
        puts health
        self
    end
end


bashful = Lion.new
bashful.attack_town.attack_town.attack_town.eat_humans.eat_humans.fly.fly.display_health

# Add a new method called fly, which when invoked, decreases the health by 10.
# Add a new method called attack_town, which when invoked, decreases the health by 50.
# Add a new method called eat_humans, which when invoked, increases the health by 20.
# Have the Lion attack_town three times, eat_humans twice, fly twice, and have it display its health.



# When the Lion's display_health method is called have it say 'This is a lion` before it displays the default information (make sure you still call the parent's display_health function).
