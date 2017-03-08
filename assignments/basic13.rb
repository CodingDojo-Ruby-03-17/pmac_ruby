# Print 1-255

# for x in 1..255
# puts x
# end






# Print odd numbers between 1-255

# def odd()
#     for x in 1..255
#         if x % 2 != 0
#             puts x
#         end
#     end
# end
#
# odd




# Print Sum

# for x in 0..255
#     curr = x
#     prev = (x-1).abs # each time I'm unable to persist the last value correctly on the FIRST iteration, and end up with a negative value or some other incorrect value.
#     puts "New number is: #{x} sum is: #{(curr+prev)}"
# end

# (0..255).each { |i| puts "New number is: #{i} Sum is: #{i*(i+1)/2}" }



# Iterating through an array

# def itter(arr)
#     for i in arr
#         puts i
#     end
# end
#
# arr = [1,3,5,7,9]
# itter(arr)

# [1, 3, 5, 7, 9].each { |i| puts i }





# Find max

# def findmax(arr)
#     puts arr.max
# end
#
# arr = [6,5,4,3,-21,1]
# findmax(arr)





# Get Average # needs to be fixed
#
# def ave(arr)
#     for i in arr
#         while arr[i] < arr.length
#             puts arr[i] + arr[i++]
#         # curr = arr[i]
#         # prev = (arr[i-1])
#         # sum = (curr+prev)
#         # puts sum
#         # avg = sum / 2
#         # puts avg
#     end
# end
#
# arr = [2,10,3]
# ave(arr)

# puts Array.new(10) { rand(1...100) }.to_enum.reduce(:+) / 10



# Array with Odd Numbers

# puts (1..255).to_a.find_all { |i| i.odd? }

# arr = (1..255).to_a
#
# for i in arr
#     y = []
#     if i.odd?
#         y << i
#     else
#         next
#     end
#     puts y
# end



# Greater than Y
# refactor per example:

# array = [1, 3, 5, 7]
# y = 6
# puts array.each if { |i| i > y }

# puts Array.new(10) { rand(1..15) } .find_all { |i| i > y } .length



# Square the values
# Given any array x, say [1, 5, 10, -2], create an algorithm (sets of instructions) that multiplies each value in the array by itself. When the program is done, the array x should have values that have been squared, say [1, 25, 100, 4].



# Eliminate Negative Numbers
# Given any array x, say [1, 5, 10, -2], create an algorithm that replaces any negative number with the value of 0. When the program is done, x should have no negative values, say [1, 5, 10, 0].
#
# puts Array.new(15) { rand(-30...30) } .reject! { |i| i < 0 }



# Max, Min, and Average
# Given any array x, say [1, 5, 10, -2], create an algorithm that returns a hash with the maximum number in the array, the minimum value in the array, and the average of the values in the array.

# Shifting the Values in the Array
# Given any array x, say [1, 5, 10, 7, -2], create an algorithm that shifts each number by one to the front. For example, when the program is done, an x of [1, 5, 10, 7, -2] should become [5, 10, 7, -2, 0].

# arr = [1,3,5,7,9]
# for i in arr
#     puts (arr.shift)
# end

# a = [1, 5, 10, 7, -2]; a.shift
# puts a << 0

# x = []
# arr = Array.new(10) { rand(-50...50) } .shift
# puts arr



# Number to String
# Write a program that takes an array of numbers and replaces any negative number with the string 'Dojo'. For example, if array x is initially [-1, -3, 2] after your program is done that array should be ['Dojo', 'Dojo', 2].

# neg_arr = [1,3,5,-7,9,32,-24,-121,5, 8]
# # for i in neg_arr
# #     if neg_arr[i] <= 0
# #         neg_arr.slice!(i)
# #     end
# #     puts neg_arr
# # end
#
# neg_arr.each { |i| i <= 0 } .slice!(neg_arr[i])
# puts neg_arr
