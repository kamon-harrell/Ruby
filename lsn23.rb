people = 30
cars = 40
trucks = 15

if cars > people
  puts "we should take the cars"
elsif cars < people
  puts "we should not take the cars"
else
  puts "we cant decide"
end

if trucks > cars
  puts "thats to many trucks"
elsif trucks < cars
  puts "maybe we should take the trucks"
else
  puts "we still cant decide"
end

if people > trucks
  puts "alright lets just take the trucks"
else
  puts "fine lets stay home then"
end
