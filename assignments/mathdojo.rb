# class MathDojo
#     def initialize
#         @result = 0
#         self
#     end
#
#     def result
#         @result
#     end
#
#     def add(a,b)
#         puts a + b
#         self
#     end
#
#     def subtract(c,d)
#         puts c - d
#     end
#
# challenge1 = MathDojo.new.add(2).add(2, 5).subtract(3, 2).result # => 4
# challenge2 = MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result # => 23.15Copy


#
# Hint
# Practice method chaining
# Use the Splat Operator (splat operator)
#
# You can use the splat operator when you are not sure how many arguments your methods are going to passed in. For example:
#




# def splatting *params
#  params
# end
# puts splatting(1).inspect # => [1]
# puts splatting(1, 2, 3, 4, 5).inspect # => [1, 2, 3, 4, 5]
# # => All the arguments are condensed into a single array.Copy


class MathDojo
  def initialize()
    @result = 0
    return self
  end

  def result
    @result
  end

  def add *operands
    @result += operands.reduce(:+)
    return self
  end

  def sub *operands
    @result -= operands.reduce(:+)
    return self
  end
end

puts MathDojo.new().add(1,2,3,4).sub(-90).result
