# Status Update 1

September 4th, 10 am:
* I have now a functional quiz. It currently stops once you have answered 3 questions correctly. This will be changed to 10 at the end, but while I'm still testing if things work, it's better to keep it at 3.
* The quiz app now contains the following components: 1 file with the questions, one file with the menu, and one file with the actual quiz.
* My next steps are to add a way for people to add their high score to a list, possibly a CSV file and adding error handling so that people don't type in anything other than what they are supposed to.
* Once all of that is done I want to research some cool gems to make my app look a little nicer. But that's something I'm only going to do once everything else is functional, including the game, the menu and the high score list.


# Status Update 2
September 5th, 10 am:
* The quiz is now fully functional.
* The user can now enter their name into a high score list (CSV) and view the high score.
* I have added error handling in the menu, in case the user choses something other than the three menu options 1, 2, or 3.
* I have also added some gems to make the quiz look a bit more fun. The artii gem was used to create a big header to welcome the user. If the user gets a question right the message that is displayed is green and if they get a question wrong the message is displayed in red.
* I have to do the rest of the documentation today and check to see whether I have included everything that was necessary.
* Finally I'll have to figure out how to write tests for my terminal app.