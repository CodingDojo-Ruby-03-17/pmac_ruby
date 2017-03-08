# def test
#     puts "I'm in the first string"
#     "This is a string #{}"
#     yield
#     puts "im the 3rd string"
# end
#
# test { puts "This is another string"}

#
# def test
#     yield(25)
#     puts "you are in the method test"
#     yield(7)
# end
#
# test { |g| puts "you are in the block #{g}"}


def square(num)
    puts "num is #{num}"

    x = yield(num)
    puts "x has a value of #{x}"

    y = yield(num)*x
    puts "y has a value of #{y}"
end

square(5) { |a| a*a }
