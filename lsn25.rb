the_count = [1, 2, 3, 4, 5]
fruits = ['apples', 'oranges', 'pears', 'apricots']
change = [1, 'pennies', 2, 'dimes', 3, 'quarters']

the_count.each {|n| puts "this is count #{n}"}

the_count.each do |n|
  puts "this is count #{n}"
end

fruits.each do |fruit|
  puts "a fruit type : #{fruit}"
end


change.each {|i| puts "I got #{i}"}


#we build the elements array here
elements = []

#and use the range operator to do 0 to 5 counts
(0...5).each do |i|
  puts "adding #{i} to the list"
  # pushes the i var to the end of the list
  elements.push(i)
end

# now we can print them out
elements.each {|i| puts "element was #{i}"}
