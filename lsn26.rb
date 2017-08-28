i = 0
numbers = []

while i < 6
  puts "At the top of i #{i}"
  numbers.push(i)
  i += 1
  puts "numbers now: ", numbers
  puts "at the bottom i is #{i}"
end

puts "the number: "
numbers.each {|num| puts num}
