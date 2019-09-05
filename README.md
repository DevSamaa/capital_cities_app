# Software Development Plan

This document contains the following information:
1. Help File
2. Statement of Purpose
3. List of Features
4. User Interaction and Experience
5. Control Flow Diagram	
6. Implementation Plan

## 1 Help File
add this at the end

## 2. Statement of Purpose

What:<br>
The app is called “Quiz World” and currently lets players guess the capital city of a country. The player will get one point for every question that they answer correctly. Once they answer 10 questions correctly, the game is over and the player has won. Players can also add their score to a high score list and view that list.
The quiz is set up in such a way, that other questions can be added in the future. This means that it could be used for a wide range of educational purposes.

Problem:<br>
Many people have a hard time retaining new information. This is true for many fields of study, including geography. In order to make it easier and more fun to learn the capital cities of various countries around the world, I want to create a quiz.
Since the quiz will be set up in a way that will allow for new questions to be added to it, it can later be used for other purposes. It could be turned into a quiz on programming concepts or ruby specific terminology for instance. 

Target Audience:<br>
Anyone who is interested in learning something new in a gamified way is part of the target audience. I myself fall into this category, and I have specifically chosen capital cities because this is something that I actually want to learn. One day I’d like to know the capital city of every country on earth. Since more questions can be added, the app can be modified to suit different peoples educational needs.

How:<br>
The user will start the app and then have three options. They’ll either be able to start a quiz, view the high score or exit out of the app. Once they start the quiz, they’ll have to answer 10 consecutive answers correctly in order to win.  If they answer a question incorrectly, they’ll lose the game. The user can play the quiz as many times as they like. Every time a quiz is started the questions and answers will be shuffled, so the user is not going to see the same questions in the same order every time. Regardless of whether the user wins or loses, they’ll be able to enter their score into a high score sheet in the form of a CSV file. They will also be able to view that high score list.


## 3. List of Features
* Play Quiz<br>
This is the main part of the application. Once the user chooses ‘start quiz’ from the menu, they’ll get to this part of the application. The code is spread over several files. The questions.rb file contains an array of hashes with the questions, multiple choice answer options, and the correct answer. The quiz.rb file is where the three main methods of the quiz are located. The play_quiz method starts with a counter of 0 and loops through until the counter gets to 10. When the game starts the questions in the array of hashes are shuffled to ensure that the user doesn’t always get the same order of questions. The code then goes to the ask_question method and show_answer method to display the question and answer that corresponds to the index of the counter.
The play quiz part of the app also contains error handling. If the user chooses an option other than 1, 2, 3, or 4, it tells them that this is not a valid option and they’ll get to repeat the question.

* Add to High Score<br>
Once the user gets to 10 points, they win and the game ends. The enter_high_score_win_method which is stored in a different file is then called. It takes the argument of (counter) to add the points to the high score list.
It also gets input from the user, by asking them to type in their name. It then combines the name and the score and appends that to the CSV file.

* View High Score<br>
The menu contains an if statement which lets the user select the ‘view high score’ option. If the user selects that option, the code loops through and puts every line from the high_score.csv file. The user will then be able to view all of the high scores that were recorded.

* Menu<br>
There is a menu which lets the user pick 1, 2, or 3 based on what they want to do. If they chose anything else, the else part of the if loop tells them that this is not a valid option. The loop then continues and prints the menu again. After viewing the high score or playing a game, the menu is printed again so that the user can choose what they want to do next.


## 4. User Interaction and Experience

## 5. Control Flow Diagram	

## 6. Implementation Plan