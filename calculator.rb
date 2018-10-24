require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end

  def x_percent_of_y(percent, number)
    return number * (percent / 100.0)
  end

  def is_prime(num)
    prime = true

    for i in 2..num-1
      if num % i == 0
        prime = false
      end
    end

    return prime
  end

  def factorial(n)
    if n==0
      return 1
    else
      return n * factorial(n-1)
    end
  end
end

RSpec.describe Calculator do
  describe '#add' do
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end
  end

  describe '#subtract' do
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(2, 1)
      expect(result).to eq(1)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(8, 7)
      expect(result).to eq(56)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(6, 3)
      expect(result).to eq(2)
    end
  end

  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(12)
      expect(result).to eq(144)
    end
  end

  describe '#power' do
    it 'should return a number raised to a popwer' do
      calculator = Calculator.new
      result = calculator.power(9, 2)
      expect(result).to eq(81)
    end
  end

  describe '#x_percent_of_y' do
    it 'should return x percent of a number' do
      calculator = Calculator.new
      result = calculator.x_percent_of_y(50, 10)
      expect(result).to eq(5)
    end
  end

  describe '#is_prime' do
    it 'should return whether a number is prime' do
      calculator = Calculator.new
      result = calculator.is_prime(5)
      expect(result).to eq(true)
    end
  end

  describe '#factorial' do
    it 'should return the factorial of a number' do
      calculator = Calculator.new
      result = calculator.factorial(6)
      expect(result).to eq(720)
    end
  end
end