class String_calculator
	attr_reader :string

	def add(string)
		number1=string.count("1")
		number2=string.count("2")
		number0=string.count("0")
		empty=string.empty?
		if empty
			return 0
		else
			return number1+(number2*2)+(number0*0)
		end
	end

	def add2(string)
		integer_array = string.split(//).map do |character|
				character.to_i
		end

		integer_array.reduce(0){|sum,item| sum+item}
	end

end

sum=String_calculator.new.add2("123456")
puts sum