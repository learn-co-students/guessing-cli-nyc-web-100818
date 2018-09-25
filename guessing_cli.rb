require 'pry'
# Code your solution here!
def run_guessing_game
guess = " "
  while guess # while there's a guess
    puts "Guess a number between 1 and 6."
      guess = gets.chomp
      comp_num = rand(1..6) # or convert .to_s

    case guess

    when comp_num.to_s
        puts "You guessed the correct number!"

      when "exit"
        puts "Goodbye!"
        break

      else
        puts "The computer guessed #{comp_num}."
    end
  end
end


# def run_guessing_game
#   guess = " "
#
#   while guess # while there's a guess
#     puts "Guess a number between 1 and 6."
#       guess = gets.chomp
#       comp_num = rand(1..6) # or convert .to_s
#     if guess.to_i == comp_num
#       puts "You guessed the correct number!"
#     elsif guess.downcase == "exit"
#       puts "Goodbye!"
#       break
#     elsif guess.to_i != comp_num
#       puts "The computer guessed #{comp_num}."
#     end
#   end
# end


# case guess.chomp
# when comp_num
