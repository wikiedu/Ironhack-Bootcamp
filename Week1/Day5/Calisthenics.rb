require'pry'

def power(number,exponent)
empty=Array.new(exponent)
numbers=empty.map{|a| number}
resultado=numbers.reduce(1){|sum,item| sum*item}
puts resultado
end

def reverse(string)
	reversed_string=string.reverse
	puts reversed_string
end




power(3,4)
reverse("You are not going anywhere")