
def enter_high_score_method(counter)
    puts " "
    puts "Please enter your name so we can add you to the high score list"
    puts "> "
    user_name = gets.chomp
    File.open("high_score.csv", "a") do |line|
    line << "#{user_name}, #{counter}\n"
    end
end
