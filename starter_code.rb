
questions = [
  {
    question: 'Whats the capital of Australia?',
    answers: [
      "Canberra", "Melbourne", "Sydney", "Adelaide"
    ],
    correct: "Canberra"
  },
  {
    question: "Whats the capital of the USA?",
    answers: [
      "New York", "Boston", "LA", "Washington DC"
    ],
    correct: "Washington DC"
  }
]

# counter = 0

# loop do 
#   question = questions[counter]
#   puts question[:question]
#   question[:answers].each_with_index do |option, index|
#     puts "#{index + 1}) #{option}"
#   end 
#   print "> "
#   answer = gets.chomp.to_i
#   counter += 1
# end 