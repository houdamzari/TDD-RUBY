require_relative 'solver'
require 'rspec/expectations'

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
      expect { solver.factorial(-5) }.to raise_error(NonNegativeIntegerError, 'Argument must be a non-negative integer')
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
end
