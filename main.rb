require "./classes/question.rb"
require "./classes/player.rb"

Player1 = Player.new()
Player2 = Player.new()

# prompt user with question and check answer
# return true if answer given is correct
def prompt_question(player, question)
  puts "----- NEW TURN -----"
  puts "#{player}: What does #{question.num1} plus #{question.num2} equal?"
  return gets.chomp() == question.answer
end

# If either player has lives the game continues
while Player1.lives > 0 && Player2.lives > 0

  question_count += 1

  # Set current player turn
  if question_count % 2 != 0
    current_turn = "Player 1"
  else
    current_turn = "Player 2"
  end

  # Prompt current player with question and await input
  current_question = Question.new()

  if prompt_question(current_turn, current_question)
    puts "YES! You are correct."
  else
    if current_turn == "Player 1"
      Player1.lives -= 1
    end
    if current_turn == "Player 2"
      Player2.lives -= 1
    end

    puts "Seriously? No!"
  end

end
