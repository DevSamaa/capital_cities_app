require_relative 'questions'
require_relative 'menu'
require_relative 'enter_high_score'

# Gems
require 'colorize'

def ask_question_method(counter)
    quiz_item = QUIZ_QUESTIONS[counter]
    puts " "
    puts quiz_item[:question]
    return quiz_item
end

def show_answer_options(quiz_item)
    shuffled_cities = quiz_item[:answers].shuffle
    shuffled_cities.each_with_index do |option, index|
        puts "#{index +1}. #{option}"
    end 
    print "> "
    user_answer = gets.chomp.to_i
    # Error handling for invalid user answer.
    begin 
        valid_answers = [1, 2, 3, 4]
        is_valid_answer = valid_answers.include?(user_answer)
        if is_valid_answer == false 
            raise
        else 
            return user_answer, shuffled_cities
        end 
    rescue 
        puts " "
        puts "The selection you choose is not valid! Please input 1, 2, 3 or 4"
        puts " "
        show_answer_options(quiz_item)
    end 
end

def play_quiz
    counter = 0
    QUIZ_QUESTIONS.shuffle!
    loop do 
        if counter == 10
            enter_high_score_win_method(counter)
            break
        end 
        quiz_item = ask_question_method(counter)
        user_answer, shuffled_cities = show_answer_options(quiz_item)
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

