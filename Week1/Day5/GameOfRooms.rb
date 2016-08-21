class UserInput
	attr_accessor :input
	def initialize(input)
		@input=input
	end

end


class Rooms
	def initialize
		@position=[]
		@objects=[]
		