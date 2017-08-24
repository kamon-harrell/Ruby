print "gib me a numba: "
number = gets.chomp.to_i

bigger = number * 100
puts "a bigger number is #{bigger}"

print "give me a nother number: "
another = gets.chomp
number = another.to_i

smaller = number/100
puts "a smaller number is #{smaller}"
