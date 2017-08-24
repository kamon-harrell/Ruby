user_name = ARGV.first
prompt = "> "

puts "hi #{user_name}"
puts "I'd like to ask you a few questions."
puts "Do you like me #{user_name}? ", prompt
likes = $stdin.gets.chomp

puts "Where do you live #{user_name}? ", prompt
lives = $stdin.gets.chomp

puts "What kind of computer do you have? ", prompt
computer = $stdin.gets.chomp

puts """
Alright so you said #{likes} about liking me.
And you live in #{lives}. I'm not sure where that is.
You also said you have a \"#{computer}\" computer. nice, I used to have one of those when i started programming.
"""
