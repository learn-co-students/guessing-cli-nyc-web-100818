# Code your solution here!
def run_guessing_game
  loop do
    puts "Guess a number between 1 and 6."
    input = gets.chomp
    computer_guess = rand(1..6)
    if input == "exit"
      puts "Goodbye!"
      break
    elsif input.to_i == computer_guess
      puts "You guessed the correct number!"
    else
      puts "The computer guessed #{computer_guess}."
    end
  end
end
