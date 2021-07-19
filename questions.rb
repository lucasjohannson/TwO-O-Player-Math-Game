
class Questions
  attr_accessor :answer, :question_string
def initialize() 
  @num1 = rand(1...20)
  @num2 = rand(1...20)
  @answer = @num1 + @num2
  @question_string = "What does #{@num1} plus #{@num2} equal?"
end
end

