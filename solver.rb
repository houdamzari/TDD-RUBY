class Solver
  def factorial(n)
    raise ArgumentError.new("Argument must be a non-negative integer") if n < 0
    return 1 if n == 0
    (1..n).reduce(:*)
  end


  def reverse(word)
  return word.reverse
end

end

solver = Solver.new
puts solver.factorial(5)  # Output: 120
puts solver.reverse("hello") #=> "olleh"
puts solver.reverse("world") #=> "dlrow"
puts solver.reverse("") #=> ""