# Code your solution here!


def run_guessing_game
  starting = ""
  while starting 
    puts "Guess a number between 1 and 6."
  random = rand(1...6).to_s         #  allow(self).to receive(:rand).and_return(2)  |  expect(self).to receive(:gets).and_return("2")
    users_input = gets.downcase.chomp     #expect(self).to receive(:gets).and_return("exit")
    case users_input
    when random
      puts "You guessed the correct number!"
    when "exit"
      puts "Goodbye!"
      break
    else
        puts "The computer guessed #{random}."
      end
    end
  end
