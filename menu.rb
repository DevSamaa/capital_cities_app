def menu
    loop do
        puts " "
        puts "Welcome to the capital cities quiz."
        puts " "
        puts "What would you like to do?"
        puts "1. View High Score"
        puts "2. Start quiz"
        puts "3. Exit Quiz"
        puts "> "
        user_menu_selection = gets.to_i
        if user_menu_selection == 1
            File.open("high_score.csv").each do |line|
                puts line
              end
        elsif user_menu_selection == 2
            play_quiz
        elsif user_menu_selection == 3
            puts "Farewell dear friend, you have now left the quiz."
            break
        end
    end
end


