require_relative 'solver'
require 'rspec/autorun'

describe Solver do
  let(:solver) { Solver.new }

  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(solver.factorial(0)).to eq(1)
    end

    it 'returns the correct result for positive integers' do
      expect(solver.factorial(5)).to eq(120)
      expect(solver.factorial(10)).to eq(3_628_800)
    end

    it 'raises an error when given a negative integer' do
      expect do
        solver.factorial(-5)
      end
    end
  end

  describe '#reverse' do
    it 'reverses a non-empty string' do
      expect(solver.reverse('hello')).to eq('olleh')
      expect(solver.reverse('world')).to eq('dlrow')
    end

    it 'returns an empty string when given an empty string' do
      expect(solver.reverse('')).to eq('')
    end
  end

  describe '#fizzbuzz' do
    it 'returns "fizz" when given a multiple of 3' do
      expect(solver.fizzbuzz(3)).to eq('fizz')
      expect(solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when given a multiple of 5' do
      expect(solver.fizzbuzz(5)).to eq('buzz')
      expect(solver.fizzbuzz(25)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when given a multiple of 3 and 5' do
      expect(solver.fizzbuzz(15)).to eq('fizzbuzz')
      expect(solver.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the input number as a string when not a multiple of 3 or 5' do
      expect(solver.fizzbuzz(7)).to eq('7')
      expect(solver.fizzbuzz(11)).to eq('11')
    end
  end
end
