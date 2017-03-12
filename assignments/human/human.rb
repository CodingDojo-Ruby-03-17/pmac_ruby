class Human
    attr_accessor :health, :intelligence, :stealth, :health

    def initialize(strength=3, stealth=3, intelligence=3, health=100)
        puts "A new human!"
        @strength = strength
        @intelligence = intelligence
        @stealth = stealth
        @health = health
    end

    def attack(what)
        #decrease health of attacked object
        puts "I'm going to attack #{what}!"
        @what = what
        if what.class.ancestors.include?(Human)
            what.health -= 10
            true #what is the difference of returning true here?

        else
            false # and false here?
        end
    end
end



carl = Human.new
sagan = Human.new

puts carl.attack(sagan)
puts sagan.attack("Not a Human")





=begin

module Vehicular
  def move_forward(n)
    @position += n
  end
end

class Vehicle
  include Vehicular  # Adds Vehicular to the lookup path
end

class Car < Vehicle
  def move_forward(n)
    puts "Vrooom!"
    super            # Calls Vehicular#move_forward
  end
end


=end
