require 'pry'
class Lexiconomitron
	def eat_t(string)
		string.delete('tT')
	end

	def shazam(array)

		reversed_array = array.map { |word|  word.reverse }
		intermediate_array=[reversed_array.first, reversed_array.last]
		final_array=intermediate_array.map { |word| eat_t(word)  }
	end

	def oompa_loompa(array)
		oompa_array = array.delete_if{|word| word.length >3	} 
		final_oompa_array = oompa_array.map { |word| eat_t(word)  }
	end

end

# resultado=Lexiconomitron.new.shazam(["This", "is", "a", "boring", "test"])
# puts resultado