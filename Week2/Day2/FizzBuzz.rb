class FizzBuzz
	def initialize(number)
		@number=number
	end

	def fizz

		if @number%3==0 && @number%5==0
			"FizzBuzz"

		elsif @number%3==0
			"Fizz"

		elsif @number%5==0
			"Buzz"

		else
			@number
		end
	end

end
