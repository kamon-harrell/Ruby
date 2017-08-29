def start
  puts "You wake up in a dark, mysterious room."
  puts "Suddenly, a torch flickers to life, and reveals a door to your left, and in front of you."
  puts "What do you do??"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "left door"
      puts "You choose the left door, and open it slowly."
      left_room
    # elsif choice == "right door"
    #   puts "You choose the right door, and open it slowly."
    #   right_room
    elsif choice == "front door"
      puts "You choose the front door, and open it slowly."
      center_room
    else
      dead("You stumble around in the room until you starve.")
    end
  end

def first_room
  puts "You've returned to the first room, what door do you choose?"

    print "> "
    choice = $stdin.gets.chomp

    if choice == "left door"
      puts "You choose the left door, and open it."
      left_room
    # elsif choice == "right door"
    #   puts "You choose the right door, and open it."
    #   right_room
    elsif choice == "front door"
      puts "You choose the front door, and open it."
      center_room
    else
      dead("You stumble around in the room until you starve.")
    end
  end

def left_room
  puts "You open the door, and another torch flicks to life."
  puts "Oh great, more doors."
  puts "You now see a door in front of you, and a door to your right."
  # puts "You can also return to the room you were just in."

  print "> "
  choice = $stdin.gets.chomp

  if choice == "front door"
    puts "You choose the door in front of you."
    left_two
  elsif choice == "right door"
    puts "You choose the door to your right."
    center_left
  # elsif choice == "go back"
  #   puts "You go back to the room you were last in."
  #   first_room
  else
    dead("You stumble around in the room until you starve.")
  end
end

# def right_room
#   puts "You open the door, and another torch flicks to life."
#   puts "This room is empty, except for a door to your left, and the door you came through."
#
#   print "> "
#   choice = $stdin.gets.chomp
#
#   if choice == "left door"
#     puts "You choose the only door, and open it."
#     left_two
#   elsif choice == "go back"
#     puts "You go back to the room you were last in."
#     first_room
#   else
#     dead("You stumble around in the room until you starve.")
#   end
# end

def center_room
  puts "You open the door, and another torch flicks to life."
  puts "This room is empty, except for a door to your left."

  print "> "
  choice = $stdin.gets.chomp

  if choice == "left door"
    puts "You choose the only door, and open it."
    center_left
  else
    dead("You stumble around in the room until you starve.")
  end
end

def left_two
  dead("You open the door, and are engulfed in flames!")
end

def center_left
  puts "You open the door, and another torch flicks to life."
  puts "This room has a door to your right, and one in front of you."

  print "> "
  choice = $stdin.gets.chomp

  if choice == "front door"
    puts "You choose the only door, and open it."
    back_left
  elsif choice == "right door"
    puts "You pick the door to your right."
    center_room
  else
    dead("You stumble around in the room until you starve.")
  end
end

def back_left
  puts "This room is full of gold. How much do you take??"

  print "> "
  choice = $stdin.gets.chomp

  if choice.include?("0") || choice.include?("1")
    how_much = choice.to_i
  else
    dead("Man, learn to type a number.")
  end

  if how_much < 50
    puts "Nice, you're not greedy, you win!"
    exit(0)
  else
    dead("You greedy bastard!")
  end
end

def dead(why)
  puts why, "You have died!"
  exit(0)
end

start
