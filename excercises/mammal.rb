class Mammal
    attr_accessor :genus, :species
    def initialize (genus, species)
        @genus = genus
        @species = species
        puts "I am alive"
        puts "I am a mammal!"
    end
    def breath
        puts "Inhale and exhale"
        self
    end

    def who_am_i
        # printing the current object
        puts self.species
        puts self.genus
        self
    end
end
# my_mammal = Mammal.new("this", "that") # => "I am alive"
# my_mammal.who_am_i # => #<Mammal:0x007f9e86025dd8>
# my_mammal.who_am_i.breath # => undefined method `speak' for nil:NilClass (NoMethodError)

liger = Mammal.new("Lion", "Tiger").breath
puts liger.genus, liger.species
