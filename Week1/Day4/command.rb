
class Login
	attr_reader :username, :password
	def initialize 
		@username=username
		@password=password
	end

	def username_entry
		puts "Username:"
		@username=gets.chomp

	end

	def password_entry
		puts "Password:"
		@password=gets.chomp
	end

	def check_login
		@password=="1234" && @username=="Edu"
	end

	def state
		if check_login == true
			puts "Enter some text:"
			text = gets.chomp

		else
			puts "Incorrect Password or Username"
			text = "Incorrect"
		end

	end

end

class Text
	def initialize (text)
		@text=text
	end
end

class Count_words < Text
	def counting_words
			words=@text.split.size
			puts "You have introduce: #{words} words"
	end
end

class Count_letters < Text

	def counting_letters
		words=@text.split
		total_letters=words.reduce(0){|letters,word| letters + word.length}
		puts "You have introduce: #{total_letters} letters"

	end

end

class Reverse < Text
	def reverse_text

	end
end

class Uppercase < Text
	def uppercase_text

	end
end

class Lowercase < Text
	def lowercase_text

	end
end



class Select
	attr_reader :option
	def initialize(text)
		@text=text
		@option=option
	end

	def selection
		puts "Counting Words: 1"
		puts "Count Letters: 2"
		puts "Reverse text: 3"
		puts "Convert to Uppercase: 4"
		puts "Convert to Lowercase: 5"
		puts "What option de you want? (number required)"
		@option=gets.chomp
			if option=="1"
				words=Count_words.new(@text)
				words.counting_words
			elsif option=="2"
				letters=Count_letters.new(@text)
				words.counting_letters
			end
					
	end


end




commandline=Login.new
commandline.username_entry
commandline.password_entry
text = commandline.state

option=Select.new(text)
option.selection