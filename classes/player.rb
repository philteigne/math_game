class Player

  attr_accessor :lives

  def initialize
    @lives = 3
  end

  def wrong_answer
    @lives = @lives - 1
  end

end
