user_menu_selection = 3

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