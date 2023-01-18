
class Operation
  attr_accessor :num1, :num2

  def initialize(num1, num2)
    @num1 = num1
    @num2 = num2
  end

  def sum
    @num1 + @num2
  end

  def mul
    @num1 * @num2
  end
end
