#While loop

$i = 0
$num = 5
begin
    puts("Inside the loop 1 = #{$i}")
    $i +=1
end while $i < $num

for i in 0..5
    puts "Inside the loop 1 = #{$i}"

    puts "i is now 3!" if i==3
end
