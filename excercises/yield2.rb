
















def thing(num)
    puts "Thing is a #{num}"
    yield
    puts "^that was the yield!^"
    yield
    puts "^That was the yield times 2!^"
end




thing(10) { |x| x*x }
