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

arr = (1..255).to_a

for i in arr
    y = []
    if i.odd?
        y << i
    else
        next
    end
    puts y
end
