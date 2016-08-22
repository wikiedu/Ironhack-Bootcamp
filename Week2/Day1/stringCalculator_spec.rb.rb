require_relative 'stringCalculator'

describe "My Calculator" do 
	it "returns 0 when I input an empty string" do 
		string = 1.to_s
		my_expectation = String_calculator.new.add2('')
		expect(my_expectation).to eq(0)
	end

	it 'outputs 1 when I input a string 1' do
		my_expectation = String_calculator.new.add2('1')
		expect(my_expectation).to eq(1)
	end

	it 'outputs the sum of a string of numbers' do
		my_expectation = String_calculator.new.add2('123456')
		expect(my_expectation).to eq(21)
	end

	it 'outputs the sum of a string that includes numbers' do
		my_expectation = String_calculator.new.add2('1234  rwfergerg5wrgwr gbdb   t 6')
		expect(my_expectation).to eq(21)	
	end




end