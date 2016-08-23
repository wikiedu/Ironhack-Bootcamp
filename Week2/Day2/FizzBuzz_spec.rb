require_relative 'FizzBuzz'

describe "FizzBuzz" do 

	it "returns Fizz when I input a number and i can divide by 3" do 
		number = FizzBuzz.new(3)
		expect(number.fizz).to eq("Fizz")
	end

	it "returns Buzz when I input a number and i can divide by 5" do 
		number = FizzBuzz.new(5)
		expect(number.fizz).to eq("Buzz")
	end

	it "returns FizzBuzz when I input a number and i can divide by 3 and 5 also" do 
		number = FizzBuzz.new(15)
		expect(number.fizz).to eq("FizzBuzz")
	end

end