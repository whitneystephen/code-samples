module Factorial
  public

  # Recursively compute the factorial of a number.
  def factorial(num)
    return 1 if num <= 1
    num * factorial(num - 1)
  end
end
