puts "-----"*5




BEGIN {
    puts "I am in the beginning"
}

END {
    puts "I am at the end"
}

=begin

puts "Dont print this shit"

=end

first_name = "Paul"
last_name = "MacLachlan"

puts "My first name is #{first_name} and my last name is #{last_name}"

puts "My first name is %s and my last name is %s" % [first_name, last_name]

x = "nSLASHa"

puts x.include?("SLA")

puts "I am a coding ninja" if x.include?("SLA")


nSLASHa = "we,wont,listen,any,more"

puts nSLASHa.split(",")
puts nSLASHa.split(",").to_s

y = ""

puts "Y is empty" if y.empty?


"24 plus 8 is #{24 + 8}" # => "24 plus 8 is 32"
'24 plus 8 is #{24 + 8}' # => "24 plus 8 is #{24 + 8}"
