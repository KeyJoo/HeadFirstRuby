# Get My Number
# Written by : Vladimir Pavlychev

puts "Welcome to \"Get My Number!\""

# Getting name of player and print welcome.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, in \"Ruby Head First\" #{name}!"

# Saving random number.
puts "I've got a random number betwenn 1 and 100"
puts "Can you guess it?"
target = rand(101)

# Track how many guesses the player has made.
num_guesses = 0


#Track wether the player has guessed correctly.
guessed_it = false

until num_guesses == 7 || guessed_it

  puts "You've got #{7 - num_guesses} guesses left."
  print "Make a guess: "
  guess = gets.to_i

  num_guesses += 1

  # Compare the guess to the target.
  # Print the appropriate message.
  if guess < target
    puts "Oops. Your guess was LOW."
  
  elsif guess > target
    puts "Oops.Your guess was HIGH."
  
  elsif guess == target
    puts "Good job, #{name}!"
    puts "You guessed my number (#{target}) in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If the player didn't guess in time, show the target number.
unless guessed_it
	puts "Sorry your guess is #{7 - num_guesses}"
  puts "You didn't get my number. (It was #{target})."
end

