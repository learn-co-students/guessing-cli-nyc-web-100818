def run_guessing_game
  user_input = ""
  while user_input
    puts "Guess a number between 1 and 6."
    user_input = gets.chomp
    num = rand(1..6).to_s
    if user_input == num
      puts "You guessed the correct number!"
    elsif user_input == "exit"
      puts "Goodbye!"
      break
    else
      puts "The computer guessed #{num}."
    end
  end
end
