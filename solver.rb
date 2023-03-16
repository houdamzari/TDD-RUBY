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

  def fizzbuzz(num)
    if (num % 15).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
    end
  end
end

solver = Solver.new
puts solver.factorial(5) # Output: 120
puts solver.reverse('hello') #=> "olleh"
puts solver.reverse('world') #=> "dlrow"
puts solver.reverse('') #=> ""

solver = Solver.new
puts solver.fizzbuzz(3)
puts solver.fizzbuzz(5)
puts solver.fizzbuzz(15)
puts solver.fizzbuzz(7)
