# Code your solution here!
def run_guessing_game
  puts "Guess a number between 1 and 6."
  random = rand(1..6).to_s
  input = gets.downcase.chomp
  if input == "exit"
    "Goodbye!"
  else
    while input != "exit"
      if input != random
        puts "The computer guessed #{random}."
        input = gets.downcase.chomp
      else
        puts "You guessed the correct number!"
        input = gets.downcase.chomp
      end
    end
  end
  puts "Goodbye!"
end

# def run_guessing_game
#   input = ""
#   while input
#     puts "Guess a number between 1 and 6."
#     input = gets.downcase.chomp
#     random_number = rand(1..6).to_s
#     case input.chomp
#     when random_number
#       puts "You guessed the correct number!"
#     when 'exit'
#       puts "Goodbye!"
#       break
#     else
#       puts "The computer guessed #{random_number}."
#     end
#   end
# end

# require_relative 'spec_helper'
#
# describe "Guessing CLI" do
#
#   context 'user inputs' do
#     it "responds to 'exit'" do
#       expect(self).to receive(:gets).and_return('exit')
#       expect { run_guessing_game }.to output(/Goodbye!/).to_stdout
#     end
#
#     it "responds to a correct guess" do
#       allow(self).to receive(:rand).and_return(2)
#       expect(self).to receive(:gets).and_return("2")
#       expect(self).to receive(:gets).and_return("exit")
#       expect { run_guessing_game }.to output(/You guessed the correct number!/).to_stdout
#     end
#
#     it "responds to an incorrect guess" do
#       allow(self).to receive(:rand).and_return(5)
#       expect(self).to receive(:gets).and_return("2")
#       expect(self).to receive(:gets).and_return("exit")
#       expect { run_guessing_game }.to output(/The computer guessed 5./).to_stdout
#     end
#   end
#
#   it 'starts the script with the run_guessing_game method' do
#     allow(self).to receive(:gets).and_return('exit')
#     expect { run_guessing_game }.to output(/Guess a number between 1 and 6./).to_stdout
#   end
# end
