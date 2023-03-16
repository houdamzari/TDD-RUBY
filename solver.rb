class NonNegativeIntegerError < StandardError
end

class Solver
  def factorial(num)
    raise NonNegativeIntegerError, 'Argument must be a non-negative integer' if num.negative?

    return 1 if num.zero?

    (1..num).reduce(:*)
  end

  def reverse(word)
    word.reverse
  end
end

solver = Solver.new
puts solver.factorial(5) # Output: 120
puts solver.reverse('hello') #=> "olleh"
puts solver.reverse('world') #=> "dlrow"
puts solver.reverse('') #=> ""
