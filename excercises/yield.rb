def test
    puts "I'm in the first string"
    "This is a string #{}"
    yield
    puts "im the 3rd string"
end

test { puts "This is another string"}
