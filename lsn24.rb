puts "You enter a dark room with two doors. Do you go through door #1 door #2?"

print "> "
door = $stdin.gets.chomp

if door == "1"
  puts "There's a giant bear here eating a cheese cake. What do you do??"
  puts "1. Take the cake"
  puts "2. Scream at the bear"

  print "> "
  bear = $stdin.gets.chomp

  if bear == "1"
    puts "The bear eats your face! Bad choice!"
  elsif bear == "2"
    puts "The bear eats your hand! Bad choice!"
  else
    puts "Well, doing %s is probably better. The bear ran away." % bear
  end

elsif door == "2"
  puts "You stare into the endless abyss at Cthulhu's retina."
  puts "1. Blueberries."
  puts "2. Yellow jacket clothespin."
  puts "3. Understanding revolvers yelling melodies."

  print "> "
  insanity = $stdin.gets.chomp

  if insanity == "1" || insanity == "2"
    puts "Your body survives powered by a mind made of jello! Rick Sanchez would be dissapointed by your desicion making"
  else
    puts "The insanity rots your eyes into a pool of muck. Good job."
  end

else
  puts "You stumble around and step on a switch in the darkness, and a bright light flashes. You open your eyes to discover you have been turned into a pickle."
end
