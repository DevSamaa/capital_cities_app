require_relative 'questions'
require_relative 'menu'

def play_quiz
    counter = 0
    QUIZ_QUESTIONS.shuffle!
    loop do 
        if counter == 3
            puts "Congratulations, you just won the game"
            puts " "
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
            puts "That's correct"
            p "Your current score is " +"#{counter +1}"
            puts " "
        else
            puts "That's incorrect. You lose."
            puts " "
            break
        end
        counter = counter + 1
    end 
end

menu