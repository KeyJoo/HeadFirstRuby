# Get My Number
# Written by : Vladimir Pavlychev

puts "Welcome to 'Get My Number!"

# Getting name of player and print welcome.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, in \"Ruby Head First\" #{name}!"

# Saving random number.
puts "I've got a random number betwenn 1 and 100"
puts "Can you guess it?"
target = rand(101)

# Seeking for guesses
num_guesses = 0

#remaining_guesses = 10 - num_guesses
#puts remaining_guesses.to_s + " guesses left."
puts "You've got #{10 - num_guesses} guesses left"


puts "Make a guess: "
guess = gets.to_i

puts guess < target 
puts guess > target

#sleep 2
#puts target

