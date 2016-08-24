require 'pry'

class PasswordChecker

	def check_password(email, password)
		if check_length(email, password) && check_contains_character(email, password) && check_contains_upper_lower(email, password) && check_contains_name_domain(email, password)
			true
		else
			false
		end

	end

	def check_length(email, password)
		if password.length > 7
			true
		end
	end

	def check_contains_character(email, password)
		if password =~ /\w/ && password =~ /\W/
			true
		end
	end

	def check_contains_upper_lower(email, password)
		if password =~ /[[:lower:]]/ && password =~ /[[:upper:]]/
			true
		end
	end

	def check_contains_name_domain(email, password)
		
		mail=email.split('@')
		name=email.split("@").first
		domain=mail[1].split('.').first

		if password.include?(domain) || password.include?(name)
			false
		else
			true
		end
	end



end
