require_relative 'mammal'
class Dog < Mammal


    # Default health of 150 (inherited)
    def pet # "increases the health by 5"
        puts "Were getting pet!"
        health += 5
        puts health
    end

    def walk # "decreases the health by 1"
        puts "We're walking!"
        health -= 1
        puts health
    end

    def run # "decreases the health by 10"
        puts "We're running!"
        health -= 10
        puts health
    end

    def display_health (inherited)
    end
end


rover = Dog.new #{walk*3, run*2, pet}.display_health
puts rover.health




# Have an instance of the Dog class walk 3 times, run twice, pet once and then display its health
