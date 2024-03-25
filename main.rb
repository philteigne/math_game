require "./classes/question.rb"
require "./classes/player.rb"

Player1 = Player.new()
Player2 = Player.new()

question_count = 0

# If either player has lives the game continues
while Player1.lives > 0 && Player2.lives > 0

  question_count += 1

  # Set current player turn
  if question_count % 2 != 0
    current_turn = "Player 1"
  else
    current_turn = "Player 2"
  end

end
