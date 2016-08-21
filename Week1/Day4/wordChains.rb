require 'ruby-dictionary'
require 'pry'


class Inputs
	attr_accessor :word1, :word2
	def initialize(word1,word2)
		@word1=word1
		@word2=word2
	end
end

class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain (word1, word2)
 		i=0
		index=0
		a=0
		max_i=word1.length-1
		word_changing=word1
		result=[word1]
		until result[a]==word2  
			binding.pry
			letter_swap=word2[i]
			word_changing[i]=letter_swap

			if @dictionary.exists?(word_changing)
				i=i+1
				a=a+1
				result.push(word_changing)
				binding.pry
				puts result
			else
				i=i+1
				good_word=result[a]
				word_changing=good_word
				binding.pry
			end

			if i==max_i && result[a]!=word2
				i=0
			binding.pry
			end

			
		end       # Write your algorithm here
    end
end


class Start < Inputs

	def convert_to_array
		word1_Array=@word1.split("")
		word2_Array=@word2.split("")
	end

	def check_length
		if @word1_Array.size == @word2_Array.size
			true
		end
	end

end

class Conversion
	attr_accessor :word
	def initialize(word)
		@word=word
	end

	def word_to_array
		@word.split("")
	end
end

class Algorithm < Inputs
	def chainCreation
		i=0
		index=0
		a=0
		max_i=@word1.length-1
		dictionary = Dictionary.from_file("/usr/share/dict/words")
		word_changing=@word1
		result=[@word1]
		until result==word2
			letter_swap=@word2[i]
			word_changing[i]=letter_swap

			if dictionary.exists?(word_changing)==true
				i=i+1
				a=a+1
				result.push(word_changing)
				puts result
			else
				i=i+1
				word_changing=result[a]
			end

			if i==max_i && result!=@word2
				i=0
			end

			
		end

	end

end




dictionary = Dictionary.from_file("/usr/share/dict/words")
my_chain = WordChain.new(dictionary)
my_chain.find_chain("cat", "dog")

