filename = ARGV.first

puts "were going to erase #{filename}"
puts "if you dont want that hit CNTL-C"
puts "if you do want to do that hit enter"

$stdin.gets

puts "opening the file..."
target = open(filename, 'w')

puts "truncating the file, goodbye!"
target.truncate(0)

puts "now im going to ask you for three lines"

print "line 1: "
line1 = $stdin.gets.chomp
print "line 2: "
line2 = $stdin.gets.chomp
print "line 3: "
line3 = $stdin.gets.chomp

lines = line1, line2, line3

puts "im going to write these to a new file"

target.write(lines)

puts "and finally we close it"
target.close
