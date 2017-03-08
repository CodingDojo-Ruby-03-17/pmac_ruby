hash = {
    "first_name" => "Paul",
    "last_name" => "MacLachlan"
}

# puts hash["first_name"], hash["last_name"]

# puts "Your last name is #{hash["last_name"]}" if hash["last_name"].eql? "MacLachlan"

if hash.has_key?("first_name")
    puts "Yes it has the first_name key!"
else
    puts "No, it does not!"
end


if hash.has_value?("Paul")
    puts "Yes, it has Paul in it!"
else
    puts "No, no Paul here"
end



# def new_user user = {first_name: "first", last_name: "last"}
#   puts "Welcome to our site, #{user[:first_name]} #{user[:last_name]}!"
# end
# our_user = {first_name: 'Oscar', last_name: "Vazquez"}
# new_user # => "Welcome to our site, first last!"
# new_user our_user # => "Welcome to our site, Oscar Vasquez!"
