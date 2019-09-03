require_relative 'questions'

def play_quiz
    counter = 0
    QUIZ_QUESTIONS.shuffle!
    while counter < 11
        loop do 
            quiz_item = QUIZ_QUESTIONS[counter]
            puts " "
            puts quiz_item[:question]
            shuffled_cities = quiz_item[:answers].shuffle
            shuffled_cities.each_with_index do |option, index|
                puts "#{index +1}) #{option}"
            end 
            print "> "
            user_answer = gets.chomp.to_i
            if shuffled_cities[user_answer - 1] == QUIZ_QUESTIONS[counter][:correct]
                puts "That's correct"
            else
                puts "That's incorrect. You lose"
                break
            end
            counter = counter + 1
        end 
    end
end

puts "Welcome to the capital cities quiz."
puts " What would you like to do?"
puts "1. View High Score"
puts "2. Start quiz"
puts "3. Exit"

user_menu_selection = gets.to_i
if user_menu_selection == 2
   play_quiz
end



