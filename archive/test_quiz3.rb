require_relative 'questions'
require_relative 'menu'
require_relative 'enter_high_score'

# Gems
require 'colorize'

def play_quiz
    counter = 0
    QUIZ_QUESTIONS.shuffle!
    loop do 
        if counter == 3
            enter_high_score_win_method(counter)
            break
        end 
        quiz_item = QUIZ_QUESTIONS[counter]
        puts " "
        puts quiz_item[:question]
        shuffled_cities = quiz_item[:answers].shuffle
        shuffled_cities.each_with_index do |option, index|
            puts "#{index +1}. #{option}"
        end 
        print "> "
        user_answer = gets.chomp.to_i

        if shuffled_cities[user_answer - 1] == QUIZ_QUESTIONS[counter][:correct]
            puts "That's correct".colorize(:green)
            p "Your current score is " +"#{counter +1}"
            puts " "
            counter = counter + 1
        else
            enter_high_score_lose_method(counter)
            break
        end
    end
end

menu_method


