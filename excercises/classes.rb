# class User
#     def first_name=(val) # setter
#         @first_name = val
#     end
#     def last_name=(val) # setter
#         @last_name = val
#     end
#     def first_name # getter
#         return @first_name
#     end
#     def first_name #getter
#         return @last_name
#     end
# end

# -----------
# OR

class User
    attr_accessor :first_name
    attr_accessor :last_name
end


user1 = User.new
user2 = User.new
# puts user1 == user2 # => false

user1.first_name = "Paul"
puts user1.first_name

user2.first_name = "Muad 'dib"
puts user2.first_name




class User
    attr_accessor :first_name, :last_name
    def initialize(f_name, l_name)
        @first_name = f_name
        @last_name = l_name
    end
end
steph = User.new("Stephen", "Curry")
