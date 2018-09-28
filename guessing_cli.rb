# So your `run_guessing_game` method is going to be responsible for several things:
#     - Taking in input from the command line
#     - Comparing that input to a random number that has been generated
#     - Printing out a statement `You guessed the correct number!` if the number has been guessed correctly, or `The computer guessed <number>.` if the number has been guessed incorrectly
#     - Allowing the user to exit the program when `exit` is the input

def run_guessing_game
  target_num = rand(1..6)
  guess = user_inputs
  puts 'The computer guessed ' + target_num.to_s + '.' if won?(target_num, guess) == false
  puts "You guessed the correct number!" if won?(target_num, guess) == true
  if guess == 'exit'
    puts 'Goodbye!'
    return 
  else 
    run_guessing_game
  end 
end 

def won?(target, guess)
  target == guess.to_i
end 

def user_inputs
  puts "Guess a number between 1 and 6."
  gets.chomp
end 



