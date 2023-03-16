require 'test/unit'
require_relative 'solver'

class TestSolver < Test::Unit::TestCase
  def setup
    @solver = Solver.new
  end

  def test_factorial_with_zero
    assert_equal(1, @solver.factorial(0))
  end

  def test_factorial_with_positive_integer
    assert_equal(120, @solver.factorial(5))
  end

  def test_factorial_with_negative_integer
    assert_raise(ArgumentError) { @solver.factorial(-5) }
  end

  def test_reverse_reverses_a_string
    assert_equal("olleh", @solver.reverse("hello"))
    assert_equal("dlrow", @solver.reverse("world"))
  end
  
  def test_reverse_returns_an_empty_string_when_given_an_empty_string
    assert_equal("", @solver.reverse(""))
  end

end

