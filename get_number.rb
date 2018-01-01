# Get My Number
# Written by : Vladimir Pavlychev https://github.com/KeyJoo

def colorize(text, color = "default", bgColor = "default")
    
    colors = {
      "default" => "38",
      "black" => "30",
      "red" => "31",
      "green" => "32",
      "brown" => "33", 
      "blue" => "34", 
      "purple" => "35",
      "cyan" => "36", 
      "gray" => "37", 
      "dark gray" => "1;30", 
      "light red" => "1;31", 
      "light green" => "1;32", 
      "yellow" => "1;33",
      "light blue" => "1;34", 
      "light purple" => "1;35", 
      "light cyan" => "1;36", 
      "white" => "1;37"}
    
    bgColors = {
      "default" => "0", 
      "black" => "40", 
      "red" => "41", 
      "green" => "42", 
      "brown" => "43", 
      "blue" => "44",
      "purple" => "45", 
      "cyan" => "46", 
      "gray" => "47", 
      "dark gray" => "100", 
      "light red" => "101", 
      "light green" => "102",
      "yellow" => "103", 
      "light blue" => "104", 
      "light purple" => "105", 
      "light cyan" => "106", 
      "white" => "107"}

    color_code = colors[color]
    bgColor_code = bgColors[bgColor]

    return "\033[#{bgColor_code};#{color_code}m#{text}\033[0m"
end


puts "Welcome to #{colorize("Get My Number!", "white","light red")}"

# Getting name of player and print welcome.
print "What's your name? "
input = gets
name = input.chomp
puts "Welcome, in \"Ruby Head First\" #{colorize(name, "white","light blue")}!"

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
    puts "Oops. #{colorize("Your guess was LOW.","white", "green" )}"
  
  elsif guess > target
    puts "Oops. #{colorize("Your guess was HIGH.","white", "red" )}"
  
  elsif guess == target
    puts "Good job, #{colorize(name, "white","light blue")}!"
    puts "You guessed my number (#{target}) in #{num_guesses} guesses!"
    guessed_it = true
  end

end

# If the player didn't guess in time, show the target number.
unless guessed_it
  puts "Sorry your guess is #{7 - num_guesses}"
  puts "You didn't get my number. (It was #{target})."
end