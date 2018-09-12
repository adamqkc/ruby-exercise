class Question
  attr_reader :question
  attr_accessor :answer

  def addition 
    @num1 = rand(1000) + 1
    @num2 = rand(100) + 1
    @question = "what does #{@num1} + #{@num2} equal?"
    @answer = @num1 + @num2
  end
  
  def subtraction
    @num1 = rand(1000) + 1
    @num2 = rand(100) + 1
    @question = "what does #{@num1} - #{@num2} equal?"
    @answer = @num1 - @num2
  end
  
  def multiplication
    @num1 = rand(100) + 1
    @num2 = rand(10) + 1
    @question = "what does #{@num1} * #{@num2} equal?"
    @answer = @num1 * @num2
  end
  
  def division
    @num1 = rand(100) + 1
    @num2 = rand(10) + 1
    @question = "what does #{@num1} / #{@num2} equal WITHOUT REMAINDER BECAUSE THIS IS SUPER HARD"
    @answer = @num1 / @num2
  end
end