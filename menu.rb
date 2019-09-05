require 'artii'
require 'rainbow'
require 'tty-font'
require 'colorize'

ARTII = Artii::Base.new :font => 'speed'
FONT = TTY::Font.new(:standard)

def menu_method
    puts ARTII.asciify("Quiz World")
    loop do
        puts " "
        puts "Welcome to Quiz World."
        puts " "
        puts "What would you like to do?"
        puts "1. Start Quiz"
        puts "2. View High Score"
        puts "3. Exit Quiz"
        puts "> "
        user_menu_selection = gets.to_i
        if user_menu_selection == 1
            play_quiz
        elsif user_menu_selection == 2
            File.open("high_score.csv").each do |line|
                puts line
              end
        elsif user_menu_selection == 3
            puts ARTII.asciify("BYE BYE")
            puts "Farewell dear friend, you have now left the quiz."
            break
        else
            # Error Handling
            puts "********************************************************************"
            puts "That is not a valid slection, please select one of the menu options".blink
        end
    end
end


