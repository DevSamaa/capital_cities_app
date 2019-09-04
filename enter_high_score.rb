require 'colorize'

def enter_high_score_win_method(counter)
    puts " "
    puts "Congratulations, you just won the game"
    puts " "
    puts "Please enter your name so we can add you to the high score list"
    puts "> "
    user_name = gets.chomp
    File.open("high_score.csv", "a") do |line|
    line << "\n\nUsername: #{user_name} || Highscore: #{counter}\n"
    end
end


def enter_high_score_lose_method(counter)
    puts " "
    puts "That's incorrect. You lose.".colorize(:red)
    puts " "
    puts "Please enter your name so we can add you to the high score list"
    puts "> "
    user_name = gets.chomp
    File.open("high_score.csv", "a") do |line|
    line << "\n\nUsername: #{user_name} || Highscore: #{counter}\n"
    end
end