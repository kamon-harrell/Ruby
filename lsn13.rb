# this line defines the argument you pass to the program in the command line
filename = ARGV.first

#this line assigns the open file contents of the argument passed to ARGV on line 2 to the variable txt
txt = open(filename)

# line 8 displays the name of the file you gave to it as an argument
puts "Here's youre file #{filename}:"

# this line reads out the content of the txt variable
print txt.read


# these two lines ask the user again to input the filename they would like to read. im assuming if you pass a different file name here it will read out different than the original
print "Type the filename again: "
file_again = $stdin.gets.chomp

# here we reopen what ever was passed from line 15
txt_again = open(file_again)

# and finally we print out the results of what was passed on line 15
print txt_again.read
