class Question

  attr_reader :answer, :user_answer

  def initialize()
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    @answer = @num1 + @num2
  end

  def prompt(player)
    puts "----- NEW TURN -----"
    puts "#{player}: What does #{@num1} plus #{@num2} equal?"
    @user_answer = gets
  end

end
